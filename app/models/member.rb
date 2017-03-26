class Member < ApplicationRecord
	has_many :participations
	has_many :events, through: :participations, dependent: :destroy

	before_save { self.email = email.downcase }
	validates :nickname, presence: true, length: { maximum: 50 }
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	validates :university, presence: true, length: { maximum: 50 }
	validates :major, presence: true, length: { maximum: 50 }
	validates :grade, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                format: { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
	                
	has_secure_password
end
