# require modules here

file_path = "./lib/emoticons.yml"

#loads the `emoticons.yml` file
def load_library(file_path)
  require "yaml"
  emoticons = YAML.load_file(file_path)
  emoticons
end







#takes a traditional Western emoticon, like `:)` and translate it to its Japanese version.
def get_japanese_emoticon
  # code goes here
end

#takes a Japanese emoticon and returns its meaning in English.
def get_english_meaning
  # code goes here
end
