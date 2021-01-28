class UserAccess < ApplicationRecord
    has_many :user_conflicts, dependent: :restrict_with_exception
    has_many :conflicts, through: :user_conflicts
    has_many :user_responsibilities, dependent: :restrict_with_exception
    has_many :responsibilities, through: :user_responsibilities

    accepts_nested_attributes_for :user_responsibilities

    def conflicts
        r = responsibilities
        conflicts = Conflict.all.filter { |c| c.responsibilities.where(id: r).count.eql?(c.responsibilities.count) }
        conflicts 
    end

    


end
