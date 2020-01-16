# frozen_string_literal: true

require 'sinatra'

set :port, 7284
get '/' do

  erb :index, :layout => :layout
  # erb :index, locals:
  # { sensors_data: `sensors`,
  #   hddtemp_data: `hddtemp`,
  #   free_data: `free -h`,
  #   df_data: `df -h`,
  #   mpstat_data: `mpstat`,
  #   uptime_data: `uptime` }
end

get '/members' do
  erb :members
end
