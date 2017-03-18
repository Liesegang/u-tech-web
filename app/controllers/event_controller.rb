class EventController < ApplicationController
  def index
  	@wanteds = Events.in_wanted.sort_soon.take(20)
  	@sessions = Events.in_session.sort_soon.take(20)
  	@ends = Events.in_end.sort_soon.take(20)
  end

  def show
  end
end
