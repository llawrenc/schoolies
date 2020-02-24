class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :reports, dependent: :destroy

  def admin?
    has_role?(:'Admin')
  end

  def worker?
    has_role?(:'Worker')
  end 
end
