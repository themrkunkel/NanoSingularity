defmodule Nano.Battle.Agent do
    
    def start_link do
        Agent.start_link(fn -> Nano.Battle.new(%{a: Nano.MonsterEntity.new(Nano.Entity.new(50, "Rat"), 1)},
            %{a: Nano.PlayerEntity.new(Nano.Entity.new(100,"Vadlion"), Nano.User.new("TVK"))}) end)
    end

    def attack(agent, target) do        
        Agent.update(agent, &Map.update(&1,:monster_entities,nil, 
            fn x -> Map.update(x[target].entity,:health,0,fn z -> z - 5 end) end))
    end
end