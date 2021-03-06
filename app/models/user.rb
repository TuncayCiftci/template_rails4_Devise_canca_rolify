class User < ActiveRecord::Base
  rolify
  	before_create :addrole

  	#Default create user is guest for knot join to private zone
	def addrole
		self.add_role :Guest
	end
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
