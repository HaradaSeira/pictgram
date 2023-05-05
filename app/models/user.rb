class User < ApplicationRecord
 validates :name, presence: true, length: { maximum: 15 }
 validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, }
 validates :password, format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,32}\z/ , }
 
 has_secure_password
end
