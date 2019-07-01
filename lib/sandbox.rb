file_path = "./lib/emoticons.yml"

#loads the `emoticons.yml` file
def load_library(file_path)
  require "yaml"
  emoticons = YAML.load_file(file_path)
  puts emoticons
end

load_library(file_path)

emoticons = {
  "angel"=>["O:)", "☜(⌒▽⌒)☞"],
  "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
  "bored"=>[":O", "(ΘεΘ;)"],
  "confused"=>["%)", "(゜.゜)"],
  "embarrased"=>[":$", "(#^.^#)"]
}
