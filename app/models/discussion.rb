class Discussion < ApplicationRecord
    has_many :messages

    validates :title,  presence: true
end
