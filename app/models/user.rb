class User < ApplicationRecord
    has_secure_password
  
    validates :email, presence: true, uniqueness: true
    validates :name, :role, presence: true

    has_many :products, dependent: :destroy

  end
  