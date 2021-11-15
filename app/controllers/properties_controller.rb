class PropertiesController < ApplicationController
  def index
    # @properties = []
    # current_user.properties.each do |property|
    #   @properties << property_location.property
    # end
    # return @properties

    @properties = current_user.properties
  end

  def new
    @property = Property.new
    @address = Address.new
    @property_types = PropertyType.all
  end

  def create
    # if address is new
    # @address = Address.new(address_params)
    # else @address = Address.find_by(something)

    @property = Property.new(property_params)
    @property.address = Address.new(address_params)
    @property.owner = current_user
    # @property.address.new(address_params)
    begin
      @property.save!
      redirect_to properties_path(@property.id)
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
    params.require(:property).permit(:name, :description, :property_type_id, :owner_id, :bedroom_count, :bed_count, :bathroom_count, :availability, :price)
  end

  def address_params
    params.require(:property).require(:address).permit(:postcode, :suburb, :street_number, :street_name)
  end

  # def address_params
  #   params.require(:address).permit(address: [:postcode, :suburb, :street_number, :street_name]))
  # end

  def set_property
    @property = current_user.property_locations.find(params[:id]).property
  end
end
