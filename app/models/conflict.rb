class Conflict < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts, dependent: :restrict_with_exception
  has_many :responsibilities, through: :responsibility_conflicts
  has_many :user_conflicts, dependent: :restrict_with_exception
  has_many :user_accesses, through: :user_conflicts

  def self.group_cycle
    Conflict.group(:cycle).count
  end


end
