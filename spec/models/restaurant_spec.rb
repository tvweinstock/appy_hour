require 'rails_helper'

describe Restaurant do
  describe '#available?' do
    let(:restaurant) { Restaurant.create(name: 'Canoe', capacity: 100) }
    let(:start_time) { DateTime.new(2014, 10, 17, 18) }

    it "returns true when party size is less than capacity" do
      expect(restaurant.available?(25, start_time)).to be(true)
    end

    it "returns false when party size is over capacity" do
      expect(restaurant.available?(101, start_time)).to be(false)
    end

    it "returns false when party size is over capacity" do
      expect(restaurant.available?(100, start_time)).to be(true)
    end

    context "with existing reservations" do
      let!(:reservation) { Reservation.create(restaurant: restaurant, party_size: 10, start_time: start_time) }
      
      it "returns true when reservations plus party size fits" do
        expect(restaurant.available?(10, start_time)).to be(true)
      end

      it "returns false when reservations plus party size doesn't fit" do
        expect(restaurant.available?(99, start_time)).to be(false)
      end

      it "returns true when reservations plus party size are at a different time" do
        new_start_time = DateTime.new(2014, 10, 17, 19)
        expect(restaurant.available?(100, new_start_time)).to be (true)
      end
    end
  end
end
