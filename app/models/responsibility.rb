class Responsibility < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts
  has_many :conflicts, through: :responsibility_conflicts
  has_many :user_responsibilities
  has_many :user_accesses, through: :user_responsibilities
end
