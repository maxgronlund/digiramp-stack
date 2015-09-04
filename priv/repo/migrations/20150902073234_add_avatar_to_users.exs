defmodule Digiramp.Repo.Migrations.AddAvatarToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :avatar, :string
      remove :number_of_pets
      remove :bio
    end
  end
end
