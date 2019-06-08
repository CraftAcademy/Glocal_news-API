class Reviews::Serializer < ActiveModel::Serializer
  attributes :id, :score, :comment, :created_at
end
