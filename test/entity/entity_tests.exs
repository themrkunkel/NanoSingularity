defmodule Nano.EntityTest do
    use ExUnit.Case

    test "create a new entity" do
        assert %Nano.Entity{health: 100, name: "Vadlion"} = Nano.Entity.new(100, "Vadlion")
    end
end