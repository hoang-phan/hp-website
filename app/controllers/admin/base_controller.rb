class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: ENV['USER_NAME'], password: ENV['PASSWORD'] 
end
