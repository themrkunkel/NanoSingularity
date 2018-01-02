defmodule Nano.MonsterEntity do
    defstruct entity: :none,
            level: :none
            
    def new(entity, level) do
        %__MODULE__{entity: entity, level: level}
    end    
end