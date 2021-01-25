class Cycle < ApplicationRecord
    has_many :responsibilites
    has_many :conflicts
end
