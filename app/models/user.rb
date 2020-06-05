class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dance_lessons
  has_many :bookings
  has_many :booked_dance_lessons, through: :bookings, source: :dance_lesson
  # restart server after this!

end

# class Pet < ActiveRecord::Base
#   has_many :dogs
#   has_many :dog_breeds, :through => :dogs, :source => :breeds
# end
# With :source, we're telling Rails to look for an association called :dance_lesson
# on the Booking model (as that's the model used for :bookings), and use that.
