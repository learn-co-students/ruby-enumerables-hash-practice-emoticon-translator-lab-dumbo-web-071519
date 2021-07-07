# require modules here

def load_library(library)
emoticons = YAML.load_file("./lib/emoticons.yml")

newhash = Hash.new 

newhash["get_emoticon"] = Hash.new 

newhash["get_meaning"] = Hash.new 

emoticons.each do |english, original|
  newhash["get_emoticon"][original.first]= original.last
  newhash["get_meaning"][original.last] = english
end 
newhash
end
require 'yaml'
require 'pry'

def get_japanese_emoticon(library, emote)
  
  emoticon_hash = load_library(library)
  result = emoticon_hash["get_emoticon"][emote]
  if result == nil 
    result = "Sorry, that emoticon was not found"
  end 
result
end

def get_english_meaning(library, emote)
emoticon_hash = load_library(library)
result = emoticon_hash["get_meaning"][emote]

if result == nil 
  result = "Sorry, that emoticon was not found"
end 
result 
end

