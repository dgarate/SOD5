class Conflict < ApplicationRecord
  belongs_to :cycle
  has_many :responsibility_conflicts, dependent: :destroy
  has_many :responsibilities, through: :responsibility_conflicts
  has_many :user_conflicts, dependent: :destroy
  has_many :user_accesses, through: :user_conflicts
  after_validation :report_validation_errors_to_rollbar
  def self.group_cycle
    cycles = Conflict.group(:cycle).count
    graph_values = {}
    cycles.each { |cycle| graph_values.merge!("#{cycle.first.name}": cycle.second) }
    graph_values
  end

  # def users
  #   r = responsibilities
  #   users = UserAccess.all.filter { |u| u.responsibilities.where(id: r).count.eql?(r.count) }
  #   users 
  # end

  def self.group_conflict_user
    Conflict.joins(:user_accesses).group(:name).count
  end

 def self.group_conflict_user_period
    conflicts = Conflict.joins(:user_accesses).group(:"conflicts.id", :name, :period).order(:"conflicts.id").count
    graph_values = {}
    conflicts.each { |conflict| graph_values.merge!("#{conflict.first[1]} #{conflict.first[2]}": conflict.second) }
    graph_values
    
  end

end
