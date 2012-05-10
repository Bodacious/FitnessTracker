class HeartRateReadingsController < ApplicationController
  
  def create
    @heart_rate_reading = HeartRateReading.where(date: Date.today).first ||
      HeartRateReading.new(date: Date.today)
    
    @heart_rate_reading.value = params[:todays_value]
    @heart_rate_reading.save!
        
    response = @heart_rate_reading.acceptable? ? "OK to train!" : "Take a rest day!"
    render text: response, status: :created
  end
  
end
