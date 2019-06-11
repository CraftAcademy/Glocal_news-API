class Review < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates_presence_of :score, :comment
end
