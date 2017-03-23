class ParticipationsController < ApplicationController
	def create
		if logged_in?
			@member = current_member
			@event = Event.find(params[:id])
			@participation = Participation.new(event_id: @event.id, member_id: @member.id)

			if @participation.save
				redirect_to event_path @event
			end
		else
			redirect_to login_path
		end
	end

	def destroy
		if logged_in?
			@event = Event.find(params[:id])
			@participation = Participation.where(event_id: @event.id, member_id: current_member.id).first
			if @participation.destroy
				redirect_to event_path @event
			end
		else
			redirect_to login_path
		end
	end
end
