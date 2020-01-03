class Comment < ApplicationRecord
  validates  :content, presence: true, uniqueness: true, length: { maximum: 500 }

  belongs_to :user
  belongs_to :idea
end
