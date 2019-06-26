class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all
    end

    def show
        find_pokemon
    end

    def new
        @pokemon = Pokemon.new
        @trainers = Trainer.all
    end

    def create
        @pokemon = Pokemon.create(pokemon_params)
        if @pokemon.valid?
            redirect_to pokemon_path(@pokemon)
        else
            flash.now[:error] = @pokemon.errors.full_messages
            @trainers = Trainer.all
            render :new
        end
    end

    private

    def find_pokemon
        @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemon_type, :power_level, :trainer_id)
    end
end
