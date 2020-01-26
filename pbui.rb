# frozen_string_literal: true

require 'sinatra'
require 'redcarpet'
set :port, 7284

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

get '/' do
  erb :index
  # erb :index, locals:
  # { sensors_data: `sensors`,
  #   hddtemp_data: `hddtemp`,
  #   free_data: `free -h`,
  #   df_data: `df -h`,
  #   mpstat_data: `mpstat`,
  #   uptime_data: `uptime` }
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

not_found do
  erb :notfound
end
