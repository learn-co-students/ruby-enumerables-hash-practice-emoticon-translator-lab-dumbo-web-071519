# require modules here
require 'yaml'

def load_library(path)
  emotes = YAML.load_file(path)
  emoteHash = Hash.new
  emoteHash["get_emoticon"] = Hash.new
  emoteHash["get_meaning"] = Hash.new
  emotes.each do |english, emoji|
    emoteHash["get_emoticon"][emoji.first] = emoji.last
    emoteHash["get_meaning"][emoji.last] = english
  end
  emoteHash
end


def get_japanese_emoticon(path, emote)
  emoteHash = load_library(path)
  result = emoteHash["get_emoticon"][emote]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emote)
  emoteHash = load_library(path)
  result = emoteHash["get_meaning"][emote]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
