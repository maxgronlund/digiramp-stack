defmodule Digiramp.User do
  use Digiramp.Web, :model
  use Arc.Ecto.Model
  #scope = Repo.get(User, 1)
  schema "users" do
    field :name, :string
    field :email, :string
    field :avatar, Digiramp.Avatar.Type

    timestamps
  end

  @required_fields ~w(name email)
  @optional_fields ~w(avatar)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_format(:email, ~r/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/)
    |> validate_length(:username, min: 5)
    |> validate_length(:username, max: 50)
    |> update_change(:email, &String.downcase/1)
    |> unique_constraint(:email)
    #|> validate_unique(:email, on: User.Repo, downcase: true)
    #|> unique_constraint(:email)
   
  end
end
