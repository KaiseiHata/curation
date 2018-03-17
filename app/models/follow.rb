class Follow
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['CONSUMER_KEY']
    config.consumer_secret     = ENV['CONSUMER_SECRET']
    config.access_token        = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end

  def self.save_commented_person
    #Twitter::SearchResultsの件数は最大で8000件
    array = @client.search("to:YojiNoda1").take(5000).each do |tweet|
      user_id = tweet.user.id
      screen_name = tweet.user.screen_name

      if FollowList.exists?(user_id: user_id, screen_name: screen_name)
        puts "存在します"
      else
        follow_list = FollowList.new(user_id: user_id,screen_name: screen_name)
        follow_list.save
        puts "新規保存しました"
      end
    end
  end

  def self.follow_list
    consumer_key        = ENV['CONSUMER_KEY']
    consumer_secret     = ENV['CONSUMER_SECRET']
    access_token        = ENV['ACCESS_TOKEN']
    access_token_secret = ENV['ACCESS_TOKEN_SECRET']

    consumer = OAuth::Consumer.new(
    consumer_key,
    consumer_secret,
    site:'https://api.twitter.com/'
    )
    endpoint = OAuth::AccessToken.new(consumer, access_token, access_token_secret)

    response = endpoint.get('https://api.twitter.com/1.1/followers/ids.json?screen_name=JK_writers&count=5000')
    result = JSON.parse(response.body)
    ids = result["ids"]
    for id in ids do
      FollowList.where(user_id: id).first_or_create
    end
  end

  def self.follow_follow_list
    FollowList.where(followed: 0).limit(10).each do |f|
      @client.follow(f.user_id)
      followlist.followed = 1
      followlist.save
    end
  end

  def self.follow_commented_person
    # FollowList.select
    FollowList.where(followed: 0).limit(10).each do |followlist|
      @client.follow(followlist.user_id)
      followlist.followed = 1
      puts followlist.followed
      followlist.save
    end
  end
end
