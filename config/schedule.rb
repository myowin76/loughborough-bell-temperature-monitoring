
every 90.minutes do
  rake "get_temperature", :output => {:error => 'error.log', :standard => 'cron.log'}, :environment => :development
end
