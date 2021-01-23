class Responsibility < ApplicationRecord
  belongs_to :cycle
  has_many :conflicts
  has_many :controls, through: :conflicts
end
