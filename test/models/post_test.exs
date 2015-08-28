defmodule Digiramp.PostTest do
  use Digiramp.ModelCase

  alias Digiramp.Post

  @valid_attrs %{content: "some content", image_url: "some content", source_url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
