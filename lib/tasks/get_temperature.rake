task :get_temperature => :environment do
  Temperature.get_live_new_temperature
end