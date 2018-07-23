require 'pry'

class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1

  end

  def add_post_by_title(name)
    song = Post.new(name, self)
    self.posts << song
    @@post_count +=1
  end


  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
