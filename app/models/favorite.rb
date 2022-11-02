class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  validates_uniqueness_of :experience_id, scope: :user_id
end
