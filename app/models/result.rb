class Result < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    validates :full_string, presence: true
end