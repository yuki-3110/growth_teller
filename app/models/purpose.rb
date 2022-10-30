class Purpose < ApplicationRecord
  has_many :middles, dependent: :destroy
  has_many :experiences, through: :middles
end
