# require modules here

file_path = "./lib/emoticons.yml"

#loads the `emoticons.yml` file and parses the data to the correct format
def load_library(file_path)
  require "yaml"
  emoticons = YAML.load_file(file_path)
  #output of new emoticons hash =>
      # emoticons = {
      #   "angel"=>["O:)", "☜(⌒▽⌒)☞"],
      #   "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
      #   "bored"=>[":O", "(ΘεΘ;)"],
      #   "confused"=>["%)", "(゜.゜)"],
      #   "embarrased"=>[":$", "(#^.^#)"]
      # }
  #now need to transform the emoticons hash into the right format
  #initiate cleaned emoticons hash
  emoticons_cleaned = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, emoticons|
      #set each Japanese emoticon equal to the key in the get_meaning hash; set the meaning to the value
    emoticons_cleaned["get_meaning"]["#{emoticons[1]}"] = meaning
    #set each English emoticon equal to the key in the get_emoticon has; set the Japanse emoticon to the value
    emoticons_cleaned["get_emoticon"]["#{emoticons[0]}"] = emoticons[1]
  end
  emoticons_cleaned
end

#takes a traditional Western emoticon, like `:)` and translate it to its Japanese version.
def get_japanese_emoticon(file_path, emoticon)
  dictionary = load_library(file_path)
  if dictionary["get_emoticon"][emoticon]
    dictionary["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

#takes a Japanese emoticon and returns its meaning in English.
def get_english_meaning(file_path, emoticon)
  dictionary = load_library(file_path)
  if dictionary["get_meaning"][emoticon]
    dictionary["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

#
# return = {
#   "get_meaning" => {
#     "JAPANESE_EMOTICON_1" => "MEANING_1",
#     "JAPANESE_EMOTICON_2" => "MEANING_2"
#   },
#   "get_emoticon" => {
#     "ENGLISH_EMOTICON_1" =>  "JAPANESE_EMOTICON_1",
#     "ENGLISH_EMOTICON_2" =>  "JAPANESE_EMOTICON_2",
#   }
# }
