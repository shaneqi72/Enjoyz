class PropertiesController < ApplicationController
  def index
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
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  def update
    @property.update(property_params)
    redirect_to @property
  end

  def edit
  end

  private

  def property_params
    params.require(:property).permit(:property_type_id, :property_locations_id, :name, :description, :bedrrom_count, :bed_count, :bathroom_count, :availability, :start_date, :end_date, :nightly_price)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
