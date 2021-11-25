class BookingsController < ApplicationController
  before_action :authenticate_user!
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
  end

  def destroy
    @booking = current_user.booking_created.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def check_auth
    authorize @booking || Booking
  end
end
