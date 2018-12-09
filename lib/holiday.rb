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
  string_supplies = ""
  
  holiday_hash.each do |season, holiday|
    season = season.to_s
    string_supplies += season.capitalize! + ": " + "\n"
    string_supplies += "  "
    holiday_grammar = ""
     holiday.each do |holiday, gift|
       holiday = holiday.to_s
         gift_string_grammar = ""
          if holiday.include?("_") == true
              holiday_array = holiday.split('_')
              holiday_string = ""
              
              holiday_array.each do |word|
                word.capitalize!
                holiday_string += word + " "
              end
          
              string_supplies +=  holiday_string.chop + ": "
          else
              string_supplies += holiday.capitalize! + ": "
          end
      
       #gift.each do |gift|
         #gift_string = ""
         #i = 0
         #gift_array = []
         # while i < gift.length
           # gift_array << gift[i]
            #i += 1
          #end
        #gift_string += gift_array.join("")
        #gift_string_grammar += gift_string + ", "
       #end
       string_supplies += gift_string_grammar[0..-3] + "\n" + "  "
     end
  end
  puts string_supplies
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday, gift|
          if gift == "BBQ"
           bbq_holidays << holiday.key("BBQ")
          end 
      end
    end
    bbq_holidays 
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





