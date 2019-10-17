require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # holiday_hash[:winter][:christmas][-1]=supply
  # holiday_hash[:winter][:new_years][-1]=supply
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each {|holiday, supplies| supplies << supply}
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day].push(supply) 
  #|| holiday_hash[:spring][:memorial_day].push("Table Cloth")
  #holiday_hash.each do | season, holiday|
   # if holiday == :memorial_day
    #  :memorial_day[-1](supply)
    #end
  #holiday_hash
  #nd
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    # seasons and holidays because these iteration includes all the seasons and all the holidays
    if seasons == season
    # we are inside of holidays = {:thanksgiving=>["Turkey"]}
      holidays[holiday_name]= supply_array
    # we add a new pair with the variables provided by the test
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.map do |seasons, holidays|
    if seasons == :winter
      holidays.map do |holiday, supplies| 
        winter_supplies << supplies
      end
    end
  end
  winter_supplies.join(",")
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
      holidays.each do |holiday, supply|
        puts "  #{holiday.to_s.split.capitalize!.join}:"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







