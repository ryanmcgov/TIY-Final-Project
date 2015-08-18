class User < ActiveRecord::Base
  has_many :colony_users
  has_many :colonies, through: :colony_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :timeoutable, :validatable

  validates :first_name, :last_name, :display_name, :email, presence: true
  validates :age, numericality: true, allow_nil: true

end
