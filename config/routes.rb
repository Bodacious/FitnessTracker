FitnessTracker::Application.routes.draw do
  
  post "/" => "heart_rate_readings#create"
  
  root to: "heart_rate_readings#index"
end
