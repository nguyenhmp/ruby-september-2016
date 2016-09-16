class TimesController < ApplicationController
    def index
        @date = (DateTime.now).strftime("%B %d, %Y")
        @time = (DateTime.now).strftime("%l:%M %P")
        render :index
    end
end
