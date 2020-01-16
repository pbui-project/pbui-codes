# frozen_string_literal: true

require 'sinatra'

set :port, 7284

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

not_found do
  erb :notfound
end
