require 'rest-client'
require 'json'

class Translator
  @@apiKey = "trnsl.1.1.20211121T225703Z.c751a2bb0fc016c2.fb121b207ea73cbf96e40febac229da4bcf32310"
  @@apiURL = "https://translate.yandex.net/api/v1.5/tr.json/translate"
  def self.translate(text, language, translate)
    params = {
      key: @@apiKey,
      text: text,
      lang: "#{language}-#{translate}"
    }
    response = RestClient.get(@@apiURL, {params: params} )
    translation = JSON.parse(response)['text'].join(",")
    saveTranslation(translation)

    puts "The traslate is: " + JSON.parse(response)['text'].join(",")
  end

  def self.saveTranslation(translation)
    filename = "#{Time.now.strftime "%Y_%m_%d %Hhrs%Mmins"}.txt"
    File.open(filename, "w") do |f|
      f.write(translation)
    end
  end
end

print "Enter your language: "
language = gets.chomp
print "Enter the language to translate: "
translate = gets.chomp
puts "Enter the text to translate:"
text = gets.chomp
Translator.translate(text, language, translate)


