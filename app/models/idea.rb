class Idea < ApplicationRecord
  has_many :idea_categories
  has_many :categories, through: :idea_categories
end
