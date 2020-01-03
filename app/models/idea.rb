class Idea < ApplicationRecord
  validates :title,   presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 500 }

  belongs_to :user
  has_many   :comments,  dependent: :delete_all
  has_many   :likes,     dependent: :delete_all
end
