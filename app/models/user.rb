class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :orders
   has_many :lands, through: :orders
   has_many :cities
   has_many :citysearches
   has_many :followlands

end
