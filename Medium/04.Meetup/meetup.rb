class Meetup
  require 'date'

  attr_reader :year, :month, :last_day_month

  def initialize(year, month)
    @year = year
    @month = month
    @last_day_month = Date.civil(@year, @month, -1).day
  end

  def day(day_week, ordinal)
    day_week = day_week.downcase
    ordinal = ordinal.downcase
    range_of_days = calculate_range_of_days(ordinal)
    candidates = []
    
    range_of_days.each do |day|
      date_obj = Date.civil(year, month, day)
      candidates << date_obj if date_obj.strftime("%A").downcase == day_week
    end
    
    return candidates.last unless candidates.empty?
    nil
  end

  private
  
  def calculate_range_of_days(ordinal)
    case ordinal
    when 'first' then (1..7)
    when 'second' then (8..14)
    when 'third' then (15..21)
    when 'fourth' then (22..28)
    when 'fifth' then (29..last_day_month)
    when 'last' then (22..last_day_month)
    when 'teenth' then (13..19)
    end
  end
end
