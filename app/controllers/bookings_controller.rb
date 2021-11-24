class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: %i[update edit show destroy]
  before_action :check_auth, except: %i[deny approve]

  def index
    @bookings = current_user.booking_created
  end

  def new
    @booking = Booking.new
    @booking.property = Property.find(params[:id])
  end

  def create
    @booking = Booking.create!({
                                 property_id: params[:id],
                                 traveller_id: current_user.id,
                                 accepted: 0
                               })
    redirect_to bookings_path
  end

  def show; end

  def update
    # if @booking.update(booking_params)
    #   redirect_to @booking
    # else
    #   flash.now[:errors] = @booking.errors.full_messages
    #   render :edit
    # end
  end

  def approve
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(accepted: 1)
    @pendingBookings = @booking.property.bookings.where(accepted: 0)
    @pendingBookings.update(accepted: 2)
    redirect_to @booking.property
  end

  def deny
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(accepted: 2)
    redirect_to @booking.property
    # @booking = Booking.update({
    #                             property_id: params[:id],
    #                             traveller_id: current_user.id,
    #                             accepted: 2
    #                           })
  end

  def edit; end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    # params.require(:booking).permit(:traveller_id, :property_id, :accepted)
  end

  def set_booking
    @booking = current_user.bookings.find(params[:id])
  end

  def check_auth
    authorize @booking || Booking
  end
end
