class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def new
        render :new
    end
    def create
        @randNumber = rand(0..11)
        @nameArr = ['Mike', 'Frank', 'Tim', 'Warble', 'Garble', 'Patrick', 'Warren', 'Sean', 'Jeff', 'Debbie', 'Lori', 'Rick']
        @name = @nameArr[@randNumber]
        User.create(name: "#{@name}")
        redirect_to '/users/'
    end
    def show
        render json: User.find(params[:id])
    end
    def edit
        @name = User.find(params[:id]).name
        render :edit
    end
    # def update
    # end
    def total
        @count = User.count
        render text: "There are #{@count} users in the database"
    end

end
