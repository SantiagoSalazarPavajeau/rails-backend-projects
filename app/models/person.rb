class Person < ApplicationRecord
    validates_uniqueness_of :username    
    validates :password, presence: true
    has_many :tasks
    has_many :projects, through: :tasks
    has_secure_password
end
