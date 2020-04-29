require "yaml"


def load_library (file)
  emoticon_lib =  YAML.load_file(file)
  emoticon_hash = {}
  feelings_array = []
  emoticon_lib.each do |emotion, emoticon_arr|
    # puts "#{emotion}, #{emoticon_arr[0]}, #{emoticon_arr[1]}"
      if emoticon_hash[emotion] == nil
      emoticon_hash[emotion] = {"english".to_sym => emoticon_arr[0],
      "japanese".to_sym => emoticon_arr[1]}
      end
  end
  return emoticon_hash
end



def get_japanese_emoticon(file, emoticon)
  emoticon_hash = load_library(file)
  emoticon_hash.each do |emotion, eng_jap|
    if emoticon == emoticon_hash[emotion][:english]
      p emoticon_hash[emotion][:japanese]
    end
  end
  return "Sorry that emoticon was not found"
end

get_japanese_emoticon("./lib/emoticons.yml", ":'(")


def get_english_meaning
  # code goes here
end
