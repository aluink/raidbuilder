defmodule Raidbuilder.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :name, :string, size: 40
      add :phone, :string, size: 20

      timestamps
    end
  end
end