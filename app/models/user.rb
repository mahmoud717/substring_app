class User < ApplicationRecord
    has_many :results, class_name: "Result", foreign_key: "user_id", dependent: :destroy 
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end