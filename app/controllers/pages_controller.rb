class PagesController < ApplicationController

  def index
   @properties = Property.all
  end
  
  def about
  
  end
end
