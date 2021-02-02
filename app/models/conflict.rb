class Conflict < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts, dependent: :restrict_with_exception
  has_many :responsibilities, through: :responsibility_conflicts
  has_many :user_conflicts, dependent: :restrict_with_exception
  has_many :user_accesses, through: :user_conflicts

  def self.group_cycle
    cycles = Conflict.group(:cycle).count
    graph_values = {}
    cycles.each { |cycle| graph_values.merge!("#{cycle.first.name}": cycle.second) }
    graph_values
  end

  def users
    r = responsibilities
    users = UserAccess.all.filter { |c| c.responsibilities.where(id: r).count.eql?(c.responsibilities.count) }
    users 
  end

  def self.group_cycle_user
    
  end



end
