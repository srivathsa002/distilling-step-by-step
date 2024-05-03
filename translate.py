######################################################
# requirement: googletrans==3.1.0a0                  #
# requiremnt: python 3.10+                           #
######################################################


from googletrans import Translator
import json
import pandas as pd


#########################################################
########### MAKE REQUIRED CHANGES HERE ONLY #############
# To make consistent translation of words - hashmaps    #
consistency_cache = {"te": {}, "hi": {}}                #
# send parts of dataframes to translate function        #
NUM_DIVISIONS_OF_DATASETS = 1000                        #
# check if train files start with our dataset names     #
starts_with_check = ["cqa", "anl", "esn"]               #
# CHANGE FILE NAME HERE                                 #
file_name = "cqa_train.json"                            #
# src and destination langs                             #
src_lang, dest_lang = "en", "te"                        #
# below output file names should change as per your     #
# destination language                                  #
#########################################################


# Parse file and return dataframe
def get_df_from_file(file_name, dataset_type):
  # column names for various datasets
  dataset_cols = {"cqa": ["id", "question", "choices", "answer", "abstractive_explanation", "extractive_explanation"],
                  "anl": ["uid", "premise", "hypothesis", "label", "reason"],
                  "esn": ["premise", "hypothesis", "label", "explanation_1", "explanation_2", "explanation_3"]}

  df = pd.DataFrame(columns=dataset_cols[dataset_type])

  # open file and fill df
  with open(file_name, "r") as file:
    for line in file:
      json_line = json.loads(line)
      # choices field is a list, converting to str, coz of dataframe limitations
      if "choices" in json_line:
        json_line["choices"] = str(json_line["choices"])

      new_row = pd.DataFrame([json_line])
      # add back
      df = pd.concat([df, new_row], ignore_index=True)


  len_df = len(df)
  num_parts = NUM_DIVISIONS_OF_DATASETS
  part_size = len_df // num_parts
  # store all parts of dataframe to combine later
  df_list = []
  for i in range(num_parts):
      start_idx = i * part_size
      end_idx = (i + 1) * part_size if i < num_parts - 1 else len_df
      df_part = translate_text(df[start_idx:end_idx], dest_lang, dataset_type)
      df_list.append(df_part)


  # modify df
  df = pd.concat(df_list, ignore_index=True)

  print("\nTranslation Performed on the DataFrame...\n")
  return df



# translate text
def translate_text(df, target_lang, dataset_type):
  translator = Translator()
  # which rows to translate
  relevant_cols = {"cqa": ["question", "choices", "answer", "abstractive_explanation", "extractive_explanation"],
                  "anl": ["premise", "hypothesis"],
                  "esn": ["premise", "hypothesis", "explanation_1"]}
  # store in new df
  df_modified = pd.DataFrame(columns=df.columns)

  # iterate over original dataframe
  for index, row in df.iterrows():
    for field in relevant_cols[dataset_type]:
      row[field] = row[field].replace('\"', "")
      if field == "choices":
        # coz we made it a string earlier, convert to list and split and then translate
        choices_list = row[field][1:len(row[field])-1].replace(" '", "").replace("'", "").split(',')

        translated_choices_list = []
        for choice in choices_list:
          # cache hit
          if choice in consistency_cache[target_lang]:
            translated_choices_list.append(consistency_cache[target_lang][choice])
          else:
            translated_word = translator.translate(choice, src=src_lang, dest=target_lang).text
            consistency_cache[target_lang][choice] = translated_word
            translated_choices_list.append(translated_word)

        row[field] = translated_choices_list


      # cache hit. This will surely exists coz answer must be in one of the choices
      # and choices are already translated
      elif field == "answer":
        try:
          row[field] = consistency_cache[target_lang][row[field]]
        except KeyError:
          continue

      elif field == "id":
        continue

      else:
        translated_row = translator.translate(row[field], src=src_lang, dest=target_lang).text
        row[field] = row[field] if translated_row == "" else translated_row

    else:
      df_modified = pd.concat([df_modified, pd.DataFrame([row], columns=df.columns)], ignore_index=True)

  else:
    # For some rows, random "0" field is getting added because of input formats
    if "0" in df_modified.columns:
      df_modified = df_modified.drop(columns=["0"])

    # So that nulls are not writted to output json file
    # Replace null values with empty strings
    df_modified.fillna("", inplace=True)
    return df_modified




# starter code
match file_name[:3]:
  case "cqa":
    df = get_df_from_file(file_name, "cqa")
    # print(df.columns)
    df.to_json("cqa_telugu.json", orient='records', lines=True, force_ascii= False)

  case "anl":
    df = get_df_from_file(file_name, "anl")
    df.to_json("anli1_telugu.json", orient='records', lines=True, force_ascii= False)

  case "esn":
    df = get_df_from_file(file_name, "esn")
    df.to_json("esnli_telugu.json", orient='records', lines=True, force_ascii= False)

  case _:
    print("Invalid file name. Check again.")