class UserAccess < ApplicationRecord
    has_many :user_conflicts
    has_many :conflicts, through: :user_conflicts
    has_many :user_responsibilities
    has_many :responsibilities, through: :user_responsibilities

    def conflicts
        r = responsibilities
        conflicts = Conflict.all.filter { |c| c.responsibilities.where(id: r).count.eql?(c.responsibilities.count) }
        conflicts unless conflicts.empty?
    end

    
end
