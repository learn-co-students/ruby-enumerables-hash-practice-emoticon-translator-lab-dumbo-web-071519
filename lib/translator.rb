# require modules here
require 'yaml'


def load_library(yaml_file_path)
  # code goes here
  library = YAML.load_file(yaml_file_path)
  initial_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  new_library = library.reduce(initial_hash) do |memo, (meaning, emoticon_array)|
    memo["get_meaning"][emoticon_array[1]] = meaning
    memo["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
    memo
  end
  return new_library
end

def get_japanese_emoticon(yaml_file_path, emoticon_to_check)
  # code goes here
  message = "Sorry, that emoticon was not found"
  library = load_library(yaml_file_path)
  library["get_emoticon"].each do |(english_emoticon, japanese_emoticon)|
    if english_emoticon == emoticon_to_check
      message = japanese_emoticon
      break
    end
  end
  return message
end

def get_english_meaning(yaml_file_path, emoticon_to_check)
  # code goes here
  message = "Sorry, that emoticon was not found"
  library = load_library(yaml_file_path)
  library["get_meaning"].each do |(japanese_emoticon, meaning)|
    print japanese_emoticon
    print emoticon_to_check
    if japanese_emoticon == emoticon_to_check
      message = meaning
      break
    end
  end
  return message
end
=begin
lib = load_library('./lib/emoticons.yml')
puts lib.keys
=end
