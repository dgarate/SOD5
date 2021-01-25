class Cycle < ApplicationRecord
    has_many :responsibilites, dependent: :restrict_with_exception
    has_many :conflicts, dependent: :restrict_with_exception
end
