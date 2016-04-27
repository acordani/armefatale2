class Followland < ActiveRecord::Base
	after_create :send_cadastre_email
	belongs_to :user
	belongs_to :land

 	private

  	def send_cadastre_email
    	FollowlandMailer.cadastre(self).deliver_now
  	end
end
