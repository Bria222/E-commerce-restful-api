class Center < ApplicationRecord
    validates :name, :office, :staff, :active, :external_id, presence: true
end
