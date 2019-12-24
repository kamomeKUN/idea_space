class IdeaCategory < ApplicationRecord
  belongs_to :idea, optional: true
  belongs_to :category, optional: true
end
