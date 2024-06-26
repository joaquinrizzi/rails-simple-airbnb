class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_flat, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :nb_people)
  end
end
