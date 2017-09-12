class V4Controller < ApplicationController
  def home
  end
  def twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = "oidHoVToJDiFhCRVN9wXWqlZI"
      config.consumer_secret = "jCnzYMOH4nzCOyZgtLBUeFm7FpxmPGiURK3pPwUz9oGgiOR8Iq"
      config.access_token = "884938848509108224-jKi7pSr5YMF4FF5bO4OGtBqLn2Vqfp9"
      config.access_token_secret = "OUG4EgJHU5vGiHes8r1uX9LjYUCjg0LlJ1uW985sMmMl4"
    end
    @mytweet =  client.search("to:YosemiteNPS snow", result_type: "recent").take(3).collect
      @mytweet.each do |tweet|
        puts tweet.text
      end
  end  
  def twilio
  end
end
