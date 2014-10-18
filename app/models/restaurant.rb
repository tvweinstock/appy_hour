class Restaurant < ActiveRecord::Base
  has_many :reservations
  def available?(party_size, start_time)
    reserved = reservations.where(start_time: start_time).sum(:party_size)
    reserved + party_size <= capacity
  end
end
