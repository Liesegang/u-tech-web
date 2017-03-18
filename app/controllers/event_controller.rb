class EventController < ApplicationController
  def index
  	@wanteds = Event.in_wanted.sort_soon.take(20)
  	@sessions = Event.in_session.sort_soon.take(20)
  	@ends = Event.in_end.sort_soon.take(20)
  end

  def show
  end
end
