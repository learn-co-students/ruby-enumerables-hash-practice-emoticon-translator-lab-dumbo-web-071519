# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emote_key = YAML.load_file(file_path)
  dictionary = {
    "get_meaning" => {}, 
    "get_emoticon" => {}
    
  }
  
  emote_key.each do |meaning, emoticons|
    dictionary["get_meaning"][emoticons[1]] = meaning
    dictionary["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  return dictionary
end


def get_japanese_emoticon(file_path, emoticon_english)
  # code goes here
  dictionary = load_library(file_path)
  
  if(dictionary["get_emoticon"].include?(emoticon_english))
    return dictionary["get_emoticon"][emoticon_english]
  else
    return "Sorry, that emoticon was not found"
  end
  
  
end

def get_english_meaning(file_path, emoticon_japanese)
  # code goes here
  dictionary = load_library(file_path)
  
  if dictionary["get_meaning"].include?(emoticon_japanese)
    return dictionary["get_meaning"][emoticon_japanese]
  else
    "Sorry, that emoticon was not found"
  end
end