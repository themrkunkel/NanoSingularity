defmodule Nano.Battle do
    defstruct monster_entities: [], 
        player_entities: []

    def new(monster_entities, player_entities) do
        %__MODULE__{monster_entities: monster_entities, player_entities: player_entities}        
    end
    
end