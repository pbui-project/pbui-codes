# frozen_string_literal: true

require 'sinatra'
require 'redcarpet'
set :port, 7284

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/posts' do
  post_list = Dir['public/posts/*']
  erb :posts, locals: { posts: post_list }
end

get '/public/posts/:post' do
  post_path = "public/posts/#{params['post']}"
  post_data = File.read(post_path)
  post_data.slice!(/.*\n/)
  erb :post, locals: { text: markdown(post_data)}
end

get '/logs' do 
  log_days = Dir['public/logs/*']
  erb :logs, locals: {logs: log_days}
end

get '/public/logs/:log' do
  log_path = "public/logs/#{params['log']}"
  log_data = File.read(log_path)
  log_data.gsub! '<', '&lt;'
  log_data.gsub! '>', '&gt;'
  erb :log, locals: {text: log_data}
end
not_found do
  erb :notfound
end
