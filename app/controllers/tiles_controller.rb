class TilesController < ApplicationController
    def index  
        @tiles=Tile.all
        render :json => @tiles
    end
    def show
        @tile=Tile.find(params[:id])
        render :json => @tile
    end
    # at some point think about allowing users to create their own tile
    def update
        @tile=Tile.find(params[:id])
        @tile.update(tile_params)

    end
    # will also need a way to delete if they can create
 
    private 
        def tile_params
            params.require(:tile).permit(:description)
        end
    
    #07/26 think about adding tiles to database as a seedfile, and maybe get the update running.
end
