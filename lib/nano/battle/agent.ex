defmodule Nano.Battle.Agent do
    
    def start_link do
        Agent.start_link(fn -> Nano.Battle.new([Nano.MonsterEntity.new(Nano.Entity.new(50, "Rat"), 1)],
            [Nano.PlayerEntity.new(Nano.Entity.new(100,"Vadlion"), Nano.User.new("TVK"))]) end)
    end

    def attack(agent, target) do
        Agent.update(agent, fn x -> Map.put(Enum.find(x.monster_entities,fn y -> y == target end ).entity,:health,5) end)
    end
end