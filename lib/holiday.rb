require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each{|holiday, supplies| holiday_hash[:winter][holiday] = [*supplies, supply]}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = [*holiday_hash[:spring][:memorial_day], supply]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  arr = []
  holiday_hash[:winter].each{|holiday, supplies| arr << supplies}
  arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|w| w.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |seasons, holidays|
    holidays.each{|holiday, supplies| supplies.include?("BBQ") ? arr << holiday : nil}
  end
  arr
end