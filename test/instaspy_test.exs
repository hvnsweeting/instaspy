defmodule InstaspyTest do
  use ExUnit.Case
  doctest Instaspy

  test "Spy HVN" do
    # This will be a constant - he is no longer use Instagram
    assert Instaspy.check("hvnsweeting") == 49
  end
end
