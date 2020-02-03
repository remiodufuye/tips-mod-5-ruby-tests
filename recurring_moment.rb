require 'active_support'
require 'active_support/core_ext'
require 'pry'


class RecurringMoment

  def initialize(start:, interval:, period:)
        # binding.pry 
        @start = start
        @interval = interval
        @period = period
      end 

  def match(date)
   
    current = @start 
    counter = 1 
    
    
    while current <= date

      if current == date
        return true
      end 
     
      if @period == 'monthly'
        #  current = current.advance(months: @interval)
         current = @start.advance(months:counter * @interval)
         counter += 1
 
    
      elsif @period == 'weekly'
        current = current.advance(weeks: @interval)
      

      elsif @period == 'daily'
        current = current.advance(days: @interval)
    
      end
    end

  
    return false 
  end 
end

 


# require 'active_support'
# require 'active_support/core_ext'

# class RecurringMoment
#   def initialize(start:, interval:, period:)
#     @start = start
#     @interval = interval
#     @period = period
#   end

#   def match(date)
#     current = @start

#     while current < date
#       if current == date
#         return true
#       end

#       if @period == 'monthly'
#         current = current.advance(weeks: @interval)
#       elsif @period = 'weekly'
#         current = current.advance(months: @interval)
#       elsif @period == 'daily'
#         current = current.advance(days: @interval)
#       end
#     end

#     return false
#   end
# end