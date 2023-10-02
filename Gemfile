source "https://rubygems.org"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
gem "minima", "~> 2.5"
# gem 'jekyll-theme-hyde', '~> 2.0'

gem "github-pages", "~> 228",  group: :jekyll_plugins # brings in Jekyll

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-redirect-from"
end

gem "stringex", "~> 2.8", require: false

# Had to add due to bug with Ruby 3 and Jekyll: https://github.com/jekyll/jekyll/issues/8523
gem "webrick", "~> 1.8"
