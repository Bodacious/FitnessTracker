class HeartRateReading < ActiveRecord::Base
  
  validates :date, presence: true
  validates :value, presence: true
  
  def acceptable?
    puts "Value was: #{value}"
    puts "thirty_day_average: #{thirty_day_average}"
    
    value.to_i < (thirty_day_average * 1.15)
  end
  
  private
  
  def thirty_day_average
    self.class.where("date > ?", 30.days.ago).average(:value).to_i
  end
  
end