class KotsController < ApplicationController

    skip_before_action :verify_authenticity_token


    def new 
        @kot=Kot.new
    end


    def create
        @kot = Kot.new(kot_params)

        if @kot.save
            redirect_to @kot
        else
            render 'new'
        end

    end

    def show 
        @kot = Kot.find(params[:id])
    end
    

    private 

    def kot_params
        params.require(:kot).permit(:adresse, :description)
    end





end
