class Tweet
  #username, message
  attr_accessor :username, :message
  ALL_TWEETS = []
  
  def initialize(username, message)
    @message = message
    @username = username
    ALL_TWEETS << self
  end

  def self.all
    ALL_TWEETS
    
  end
  
end