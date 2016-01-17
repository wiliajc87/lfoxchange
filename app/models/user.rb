class User < ActiveRecord::Base
    validates :name, presence: :true, uniqueness: true
    validates :password, length: { minimum: 8}, on: :create
    has_secure_password
    acts_as_voter
end
