class Company < ApplicationRecord
    has_many :users, dependent: :destroy
    after_validation :report_validation_errors_to_rollbar
end
