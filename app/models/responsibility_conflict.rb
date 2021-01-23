class ResponsibilityConflict < ApplicationRecord
  belongs_to :responsibility
  belongs_to :conflict
end
