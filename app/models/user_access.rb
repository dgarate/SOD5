class UserAccess < ApplicationRecord
    has_many :user_conflicts, dependent: :restrict_with_exception
    has_many :conflicts, through: :user_conflicts
    has_many :user_responsibilities, dependent: :destroy
    has_many :responsibilities, through: :user_responsibilities

    accepts_nested_attributes_for :user_responsibilities

    def conflicts
        r = responsibilities
        conflicts = Conflict.all.filter { |c| c.responsibilities.where(id: r).count.eql?(c.responsibilities.count) }
        conflicts 
    end

    def self.read_xlsx(file_path)
        xlsx = Roo::Spreadsheet.open(file_path)
        user_aux = ""
        user = nil
        user_responsibilities = []  
        UserAccess.destroy_all
        xlsx.each_with_index(username: 'UserName', responsibility: 'Responsibility') do |hash, i|
            next if i.zero?
            
            user_aux == hash[:username] if i == 1

            if ((user_aux != hash[:username]) && i != 1 )|| (xlsx.last_row - 1 == i)
                responsibilities = Responsibility.where(name: user_responsibilities)
                
               unless responsibilities.empty?
                user = UserAccess.create(username: user_aux) 
                responsibilities.each { |resp| UserResponsibility.create(user_access: user, responsibility: resp)}
               end
               user_aux = hash[:username]
               user_responsibilities = []
            end

            user_responsibilities.append(hash[:responsibility])

        end
    end
end
