class UserUI
  def self.master(user)
     choice = $prompt.select("Welcome!!", %w(Create_Posts My_Post All_Post))
     if choice == "Create_Posts"
       self.create_post(user)
     elsif choice == 'My_Post'
       self.my_post(user)
     elsif choice == 'ALl_Post'
       self.all_post(user)
     end
  end

  def self.create_post(user)
    content = $prompt.ask('What do you want to post?', default: ENV['CONTENT'])
    Post.create(account_id: user.id, content: content)
  end
  def self.my_post(user)
    posts = Post.where(account_id: user.id)
    posts.each do |post|
      puts post.content
    end
    # binding.pry
  end

  #double check
 def self.all_post(user)
   Post.all.map { |post| post.content  }
 end


end
