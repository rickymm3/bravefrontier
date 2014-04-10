class NewsSerializer < ActiveModel::Serializer
  attributes :id, :heading, :body, :user_id
end
