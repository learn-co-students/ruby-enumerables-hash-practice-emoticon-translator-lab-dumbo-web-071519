# require modules here
require "yaml"


def load_library(path)
  # code goes here
  emos = {}
  emoticons = YAML.load_file(path)
  emos["get_meaning"] = {}
  emos["get_emoticon"] = {}
  
  emoticons.each do |key, value|
    emos["get_meaning"][value[1]] = key
    emos["get_emoticon"][value[0]] = value[1]
  end
  puts emos
  return emos
end

def get_japanese_emoticon(path, english)
  # code goes here
  library = load_library(path)
  if library["get_emoticon"].has_key? english
    return library["get_emoticon"][english]
  else 
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, japanese)
  # code goes here
  library = load_library(path)
  if library["get_meaning"].has_key? japanese
    return library["get_meaning"][japanese]
  else 
    return "Sorry, that emoticon was not found"
  end
end