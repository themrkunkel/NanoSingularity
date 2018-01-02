defmodule Nano.UserTest do
    use ExUnit.Case

    test "create a new user" do
        assert %Nano.User{name: "John"} = Nano.User.new("John")
    end
end