class Cycle < ApplicationRecord
    has_many :responsibilites, dependent: :destroy
    has_many :conflicts, dependent: :destroy
end
