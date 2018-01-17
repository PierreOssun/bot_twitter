require 'twitter'
require 'pry'


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end


#Fetch les tweet les plus recent (par IDs) d'un user
tweet_id = client.user_timeline("@emiliel3","@EliseLucet")

#Affiche les IDs des tweets
puts (tweet_id)

#Like la liste des tweets
client.favorite(tweet_id)
