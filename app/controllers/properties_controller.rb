class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_all_properties, only: [:index]
  before_action :set_property, only: %i[update edit destroy show]
  before_action :check_auth, except: %i[index show]

  # get /properties
  def index
    @properties = Property.includes(:bookings).all
  end

  def my_properties
    @properties = Property.includes(:bookings).where(owner_id: current_user.id)
  end

  def new
    @property = Property.new
    @property.address = Address.new
    @property_types = PropertyType.all
  end

  def create
    @property = Property.new(property_params)
    @property.owner = current_user
    begin
      @property.save!
      redirect_to properties_path
    rescue StandardError
      flash.now[:errors] = @property.errors.messages.values.flatten
      render 'new'
    end
  end

  def show; end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  def update
    if @property.update(property_params)
      redirect_to @property
    else
      flash.now[:errors] = @property.errors.full_messages
      render :edit
    end
  end

  def edit
    @property_types = PropertyType.all
  end

  private

  def property_params
    params.require(:property).permit(:name, :description, :property_type_id, :owner_id, :bedroom_count, :bed_count,
                                     :bathroom_count, :availability, :price, :property_image, address_attributes: %i[postcode suburb street_number street_name])
  end

  def set_property
    @property = Property.find(params[:id])
  end

  def set_all_properties
    # @properties = current_user.properties
  end

  def check_auth
    authorize @property || Property
  end
end
