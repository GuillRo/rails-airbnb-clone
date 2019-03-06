class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :score, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
end
