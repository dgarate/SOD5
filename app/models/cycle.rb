class Cycle < ApplicationRecord
    has_many :responsibilites, dependent: :destroy
    has_many :conflicts, dependent: :destroy
    after_validation :report_validation_errors_to_rollbar
end
