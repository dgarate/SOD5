class UserConflict < ApplicationRecord
  belongs_to :user_access
  belongs_to :conflict


  def self.user_problems
    problems = []
    UserAccess.all.each do |user|
      ur = user.responsibilities
      conflicts = Conflict.all.filter { |c| c.responsibilities.where(id: ur).count.eql?(c.responsibilities.count) }
      problems.append({ user: user, conflicts: conflicts }) unless conflicts.empty?
    end
    problems
  end

end
