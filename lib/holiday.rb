require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas][2] = supply
  holiday_hash[:winter][:new_years][1] = supply
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] =supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  array_supplies = []
  season = ""
  holiday_hash.each do |season, holiday|
    array_supplies << season.to_s
    
     holiday.each do |holiday, supply|
      array_supplies << holiday.to_s
      
      supply.each do |supply|
        array_supplies << supply
      end
     end
  end
  array_supplies.each do |element|
    if element == "bbq"
      element.upcase
    else
      element.capitalize!
    end
  end
  puts array_supplies
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

#Winter:
 # Christmas: Lights, Wreath
  #New Years: Party Hats
#Summer:
  #Fourth Of July: Fireworks, BBQ
#Fall:
  #Thanksgiving: Turkey
#Spring:
  #Memorial Day: BBQ





