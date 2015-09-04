defmodule Digiramp.UserTest do
  use Digiramp.ModelCase

  alias Digiramp.User

  @valid_attrs %{ email: "john@doe.com", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
