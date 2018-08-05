class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with :name => ENV['BASIC_USERNAME'], :password => ENV['BASIC_PASSWORD'] if Rails.env == "production"
end
