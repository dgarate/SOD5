class UserResponsibility < ApplicationRecord
  belongs_to :user_access
  belongs_to :responsibility
end
