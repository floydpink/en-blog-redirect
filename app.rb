require 'bundler/setup'
require 'sinatra'

ROOT = "http://www.harimenon.com"

# Redirect
# http://en.blog.harimenon.com/2009/11/laziness-prevails.html
# to
# http://www.harimenon.com/blog/2009/11/01/laziness-prevails/
get '/2009/11/laziness-prevails.html' do
  redirect "#{ROOT}/blog/2009/11/02/laziness-prevails/", 301
end
get '/2009/09/husn-e-haqiqi-english-translation.html' do
  redirect "#{ROOT}/blog/2009/09/20/husn-e-haqiqi-english-translation/", 301
end
get '/2009/07/it-keeps-flowing.html' do
  redirect "#{ROOT}/blog/2009/07/17/it-keeps-flowing/", 301
end
get '/2009/06/out-of-college-and-not-yet-into-first.html' do
  redirect "#{ROOT}/blog/2009/06/28/out-of-college-and-not-yet-into-first/", 301
end
get '/2009/06/why-is-it-that-i-am-not-able-to-blog.html' do
  redirect "#{ROOT}/blog/2009/06/23/why-is-it-that-i-am-not-able-to-blog/", 301
end
get '/2009/03/if.html' do
  redirect "#{ROOT}/blog/2009/03/13/if/", 301
end
get '/2009/03/to-this-i-put-my-name.html' do
  redirect "#{ROOT}/blog/2009/03/13/to-this-i-put-my-name/", 301
end
get '/2008/06/13-year-old-addressing-un.html' do
  redirect "#{ROOT}/blog/2008/06/07/13-year-old-addressing-un/", 301
end
get '/2007/12/noir-verses.html' do
  redirect "#{ROOT}/blog/2007/12/05/noir-verses/", 301
end
get '/2005/09/my-first-ever-blog.html' do
  redirect "#{ROOT}/blog/2005/09/18/my-first-ever-blog/", 301
end

# Redirect
# http://en.blog.harimenon.com/search/label/cyber%20AWOL
# to
# http://www.harimenon.com/blog/categories/cyber-awol/

# DevTool -> devtools
# asp.net -> asp-net
# ruby-on-rails -> ruby-on-rails

get '/search/label/:label' do |label|
  category = label.downcase.gsub(/\W/) { '-' }
  redirect "#{ROOT}/blog/categories/#{category}/", 301
end

# http://en.blog.harimenon.com/2011_12_01_archive.html
# =>
# http://www.harimenon.com/blog/archives/
get '/:year_:month_:day_archive.html' do
  redirect "#{ROOT}/blog/archives/", 301
end


# en.blog.harimenon.com -> www.harimenon.com/blog/categories/english-blog/
get '/' do
  redirect "#{ROOT}/blog/categories/english-blog/", 301
end


# Feeds
# en.blog.harimenon.com/feeds/posts/default => FeedBurner
get '/feeds/posts/default' do
  redirect "#{ROOT}/atom.xml", 301
end
