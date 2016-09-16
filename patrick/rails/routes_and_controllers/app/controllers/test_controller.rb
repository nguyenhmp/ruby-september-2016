class TestController < ApplicationController
    def index
        render text: 'What do you want to say?'
    end
    def index1
        render text: 'Hello CodingDojo!'
    end
    def index2
        render text: 'Saying Hello!'
    end
    def index3
        render text: 'Saying Hello ' + params[:name] + '!'
    end

    def times
        if !session[:count]
            session[:count] = 1
        else
            session[:count] += 1
        end
        render text: "You visited this url #{session[:count]} time(s)."
    end
    def destroytimes
        session.clear
        render text: "Boom! You destroyed the session!"
    end
end
