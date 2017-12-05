class User < ApplicationRecord
  has_secure_password
  has_many :addresses
  has_many :mid_points
  has_many :options, through: :mid_points
end
