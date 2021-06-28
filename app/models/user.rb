class User < ApplicationRecord
    has_many :results, class_name: "Result", foreign_key: "user_id", dependent: :destroy 
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    before_validation :normalize_email


    private
    def normalize_email
    self.email = self.email.downcase.strip
    end
end