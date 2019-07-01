file_path = "./lib/emoticons.yml"

#loads the `emoticons.yml` file
def load_library(file_path)
  require "yaml"
  emoticons = YAML.load_file(file_path)
  emoticons
end

load_library(file_path)