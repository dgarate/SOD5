class Responsibility < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts, dependent: :restrict_with_exception
  has_many :conflicts, through: :responsibility_conflicts
  has_many :user_responsibilities, dependent: :restrict_with_exception
  has_many :user_accesses, through: :user_responsibilities
end
