class SessionsController < ApplicationController
	def new
	end

	def create

		member = Member.find_by(email: params[:session][:email].downcase)
		if member && member.authenticate(params[:session][:password])
			# ユーザーログイン後にユーザー情報のページにリダイレクトする
			log_in member
			redirect_to current_member
		else
			# エラーメッセージを作成する
			flash.now[:danger] = 'メールアドレスまたはパスワードが間違っています'
			render 'new'
		end

	end

	def destroy
	    log_out
	    redirect_to root_url
 	end
end
