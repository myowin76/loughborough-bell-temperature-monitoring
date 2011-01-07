class Temperature < ActiveRecord::Base

  def current_temperature
    Temperature.find(:last)
  end
  
  def average_temperature
    Temperature.average(:temperature)
  end
  
  def highest_temperature
    Temperature.maximum(:temperature)
  end
  
  def lowest_temperature
    Temperature.minimum(:temperature)
  end
end
