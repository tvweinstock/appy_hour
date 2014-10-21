require 'rails_helper'

describe Reservation do
  let!(:reservation) { FactoryGirl.create(:reservation) }

  it "must not allow reservations beyond restaurant capacity" do
    reservation.people = reservation.restaurant.capacity + 1
    reservation.should_not be_valid
  end

  it "must allow reservations within restaurant capacity" do
    reservations.people = [reservation.restaurant.capacity - 1, 1].max
    reservation.should be_valid
  end

  
end


