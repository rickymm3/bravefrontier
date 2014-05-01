class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :end_date, :description, :image_loc
end
