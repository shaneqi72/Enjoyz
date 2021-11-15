class HomeController < ApplicationController
  def index
    @host = current_user.role === 1 if current_user
  end
end
