class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :pens
end
