FitnessTracker::Application.routes.draw do
  post "/" => "heart_rate_readings#create"
end
