class StaticPagesController < ApplicationController
    def home
        @wanteds = Event.in_wanted.sort_soon.take(20)
    end
    
    def about
    end

    def welcome
        render 'welcome_offseason'
    end

    def event
    end

    def join
    end

    def contact
    end
end
