class StaticPagesController < ApplicationController
    def home
        @wanteds = Event.in_wanted.sort_soon.take(20)
    end
    
    def about
    end

    def welcome
        # 新歓期は以下の行をコメントアウトしてください。
        render 'welcome_offseason'
    end

    def event
    end

    def join
    end

    def contact
    end
end
