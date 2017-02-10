class SeminarController < ApplicationController
  def index
  	@seminars = Seminar.all
  end

  def create
  end
end
