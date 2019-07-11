# require modules here
require 'yaml'

def load_library(libary)
    emoticon=yaml.load_file('/lib/emoticons.yml')
  hash=hash.new
  hash[get_emoticon]=hash.new
  hash[get_def]-hash.new
  
emoticons.each do |english, original|
  
  hash["get_emoticon"][original.first]= original.last
  hash["get_meaning"][original.last] = english
end 
hash
end
require 'yaml'
require 'pry'
end

def get_japanese_emoticon
  emoticon_hash = load_library(library)
  result = emoticon_hash["get_emoticon"][emote]
  if result == nil 
    result = "Sorry, that emoticon was not found"
  end 
result
end

def get_english_meaning
  emoticon_hash = load_library(library)
result = emoticon_hash["get_meaning"][emote]

if result == nil 
  result = "Sorry, that emoticon was not found"
end 
result 
end