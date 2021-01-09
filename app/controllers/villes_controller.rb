class VillesController < ApplicationController

    def index
        @ville = params[:ville]
        @kots = Kot.all.order("created_at DESC")
    end


end
