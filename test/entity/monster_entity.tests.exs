defmodule Nano.MonsterEntityTest do
    use ExUnit.Case

    test "create a new monster entity" do
        assert %Nano.MonsterEntity{entity: %Nano.Entity{health: 100, name: "Vadlion"}, level: 1} = 
            Nano.MonsterEntity.new(%Nano.Entity{health: 100, name: "Vadlion"}, 1)
    end
end