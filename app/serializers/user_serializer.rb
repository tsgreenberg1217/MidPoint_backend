class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_addresses
end
