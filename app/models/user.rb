class User < ApplicationRecord
    has_secure_password
    has_many :accounts, dependent: :destroy

    validates :email, presence: :true, uniqueness: {case_sensitive: true}
    validates :password_digest, presence: true, confirmation: true, uniqueness: {case_sensitive: true}
    validates :password_confirmation, presence: true
    validates_confirmation_of :password
end
