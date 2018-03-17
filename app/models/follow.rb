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

  def self.follow_commented_person
    # FollowList.select
    FollowList.where(followed: 0).limit(10).each do |followlist|
      @client.follow(followlist.user_id)
      followlist.followed = 1
      puts followlist.followed
      followlist.save
    end
  end

  # def self.tweet(str)
  #   @@client.update(str)
  # end
end
