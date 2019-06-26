class TrainersController < ApplicationController

    def index
        @trainers = Trainer.all
    end

    def show
        find_trainer
    end

    def new
        @trainer = Trainer.new
        @pokemons = Pokemon.all
    end

    def create
        @trainer = Trainer.create(trainer_params)
        redirect_to trainer_path(@trainer)
    end

    def edit
        find_trainer
        @pokemons = Pokemon.all
    end

    def update
        find_trainer
        @trainer = Trainer.update(trainer_params)
        redirect_to trainer_path(@trainer)
    end

    private

    def find_trainer
        @trainer = Trainer.find(params[:id])
    end

    def trainer_params
        params.require(:trainer).permit(:name, :age, :skill_level, :pokemon_id, pokemon_ids:[])
    end

end
