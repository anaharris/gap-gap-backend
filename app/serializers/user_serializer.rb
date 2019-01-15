class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :avatar
  has_many :conversations
end
