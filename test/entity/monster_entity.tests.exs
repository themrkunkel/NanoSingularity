defmodule Nano.MonsterEntityTest do
    use ExUnit.Case

    test "create a new monster entity" do
        assert %Nano.MonsterEntity{entity: %Nano.Entity{health: 50, name: "Rat"}, level: 1} = 
            Nano.MonsterEntity.new(%Nano.Entity{health: 50, name: "Rat"}, 1)
    end
end