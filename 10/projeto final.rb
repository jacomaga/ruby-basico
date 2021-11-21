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
    RestClient.get(@@apiURL, {params: params} )
  end

end

print "Enter your language: "
language = gets.chomp
print "Enter the language to translate: "
translate = gets.chomp
puts "Enter the text to translate:"
text = gets.chomp
response = Translator.translate(text, language, translate)

puts "The traslate is: " + JSON.parse(response)['text'].join(",")
