class Reviews::Serializer < ActiveModel::Serializer
  attributes :id, :score, :comment
end