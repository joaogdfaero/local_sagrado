class PagesController < ApplicationController
    def home
        @q = Local.ransack(params[:q])
    end
    
    def about
    end
  
    def contact
    end
end
