class User < ApplicationRecord
	validates :first_name, presence: true , length: { maximum: 15 }
	validates :last_name, presence: true, length: { maximum: 15 }
	validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
	validates :age, presence: true, numericality: { only_integer: true }
	belongs_to :city
	has_many :gossips
	has_many :commments
	has_many :likes
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
end
