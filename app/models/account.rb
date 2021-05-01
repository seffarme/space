class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  validates :first_name, presence: true
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
  end

  def company
    "test company"
  end
end
