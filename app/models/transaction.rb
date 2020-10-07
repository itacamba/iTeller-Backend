class Transaction < ApplicationRecord
    belongs_to :account

    validates :vendor, presence: true
    validates :amount, presence: true
    validates :category, presence: true
    validates :t_type, presence: true
    
end
