class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :avatar
end
