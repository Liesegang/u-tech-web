class ContactMailer < ApplicationMailer
	default from: "utech@gmail.com"   # 送信元アドレス
 	default to: "kazuki.utech@gmail.com"     # 送信先アドレス
 
 	def received_email(contact)
    	@contact = contact
    	mail(:subject => 'お問い合わせを承りました')
	end
end
