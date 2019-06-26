class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: :true

  validate :party_capacity

  private

  def party_capacity
    if self.trainer.pokemons.count > 6
      errors.add(:trainer_id, "can't have more than six pokemon in your party")
    end
  end

end
