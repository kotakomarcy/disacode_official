class Contact < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
