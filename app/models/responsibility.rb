class Responsibility < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts, dependent: :destroy
  has_many :conflicts, through: :responsibility_conflicts
  has_many :user_responsibilities, dependent: :destroy
  has_many :user_accesses, through: :user_responsibilities
end
