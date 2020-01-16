# frozen_string_literal: true

require 'sinatra'

set :port, 7284
get '/' do
  sensors = `sensors`
  hddtemp = `hddtemp`
  free = `free -h`
  dfh = `df -h`
  mpstat = `mpstat`
  uptime = `uptime`

  erb :index, locals:
  { sensors_data: `sensors`,
    hddtemp_data: `hddtemp`,
    free_data: `free -h`,
    df_data: `df -h`,
    mpstat_data: `mpstat`,
    uptime_data: `uptime` }
end

