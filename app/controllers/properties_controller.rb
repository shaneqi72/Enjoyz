class PropertiesController < ApplicationController
  def index
    @properties = []
    current_user.property_locations.each do |property_location|
      @properties << property_location.property
    end
    return @properties
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    begin
      @property.save!
      redirect_to property_path(@property.id)
    rescue
      flash.now[:errors] = @property.errors.messages.values.flatten
      render 'new'
    end
  end

  def show
    set_property
  end

  def destroy
    set_property
    @property.destroy
    redirect_to properties_path
  end

  def update
    set_property
    if @property.update(property_params)
      redirect_to @property
    else
      flash.now[:errors] = @property.errors.full_messages
      render :edit
    end
  end

  def edit
    set_property
  end

  private

  def property_params
    params.require(:property).permit(:property_type_id, :property_locations_id, :name, :description, :bedrrom_count, :bed_count, :bathroom_count, :availability, :start_date, :end_date, :nightly_price)
  end

  def set_property
    @property = current_user.property_locations.find(params[:id]).property
  end
end
