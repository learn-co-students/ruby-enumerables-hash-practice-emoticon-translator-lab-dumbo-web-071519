
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  new_hash = {
    'get_emoticon' => {},
    'get_meaning' => {}
  }
  
  emoticons.each do |key, value|
   new_hash['get_emoticon'][value[0]] = emoticons[key][1]
   new_hash['get_meaning'][value[1]] = key
  end
  new_hash
end
  
def get_japanese_emoticon(file_path, emoticon)
  japanese_emoticon = load_library(file_path)['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : "Sorry, that emoticon was not found" 
end

def get_english_meaning(file_path, emoticon)
  meaning = load_library(file_path)["get_meaning"][emoticon]
  meaning ? meaning : "Sorry, that emoticon was not found"
end