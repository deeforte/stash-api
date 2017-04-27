class YarnSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :yards, :color, :project
  has_one :user
end
