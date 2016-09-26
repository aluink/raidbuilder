defmodule Raidbuilder.Player do
  use Ecto.Schema

  schema "players" do
    field :name
    field :phone

    timestamps
  end
end