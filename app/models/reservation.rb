class Reservation < ActiveRecord::Base
  belongs_to :restaurant

  validates :availibility


  private
  def availibility
    # restaurant
    # start_time
    # party_size
    unless restaurant.available?(party_size, start_time)
      errors.add(:base, 'Restaurant is full')
    end
  end
end
