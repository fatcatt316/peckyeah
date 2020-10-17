require "stringex"

# TODO: Rewrite this to just be plain ol' Ruby,
# and remove "stringex" and "thor" gems
class Jekyll < Thor

  desc "new", "create a new post"
  # Example: thor jekyll:new The title of the new post
  def new(*title)
    title = title.join(" ")
    now = Time.now
    filename = "_posts/#{now.strftime('%Y-%m-%d')}-#{title.to_url}.markdown"

    abort("#{filename} already exists!") if File.exist?(filename)

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "date: #{now}"
      post.puts "categories:"
      post.puts "---"
    end

    system("subl", filename)
  end
end

# ---
# layout: post
# title:  "Lo, a Blog is Born Unto the World"
# date:   2020-10-17 14:55:50 -0400
# categories: technology
# ---