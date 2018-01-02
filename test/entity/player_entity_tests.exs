defmodule Nano.PlayerEntityTest do
    use ExUnit.Case

    test "create a new player entity" do
        assert %Nano.PlayerEntity{entity: %Nano.Entity{health: 100, name: "Vadlion"}, user: $Nano.User{name: "John"}} = 
            Nano.PlayerEntity.new(%Nano.Entity{health: 100, name: "Vadlion"}, $Nano.User{name: "John"})
    end
end