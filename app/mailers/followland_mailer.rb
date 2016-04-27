class FollowlandMailer < ApplicationMailer

	def cadastre(followland)
	    @followland = followland
	    

	    mail(
	      from: @followland.user.email,
	      to: 'cdif.creteil@dgfip.finances.gouv.fr',
	      cc: @followland.user.email,
	      subject: "Demande de relevé de propriété"
	      )
	 end

end