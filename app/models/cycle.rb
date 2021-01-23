class Cycle < ApplicationRecord
    has_many :responsibilites
    has_many :controls
end
