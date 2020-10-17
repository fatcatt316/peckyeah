require "stringex"

# Example usage:
# ruby new_post.rb "The title of the new post"
def create_post(*title)
  title = title.join(" ")
  now = Time.now
  filename = "_posts/#{now.strftime('%Y-%m-%d')}-#{title.to_url}.markdown"

  abort("#{filename} already exists!") if File.exist?(filename)

  puts "Creating new post: \"#{filename}\""
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

create_post(ARGV[0])

# ---
# layout: post
# title:  "Lo, a Blog is Born Unto the World"
# date:   2020-10-17 14:55:50 -0400
# categories: technology
# ---
