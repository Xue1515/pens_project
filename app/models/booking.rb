class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pens
end
