class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :given_kudos, inverse_of: 'giver', dependent: :destroy
  has_many :recieved_kudos, inverse_of: 'receiver', dependent: :destroy
end
