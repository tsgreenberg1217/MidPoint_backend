class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_addresses
  # has_many :addresses
end
