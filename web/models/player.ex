defmodule Raidbuilder.Player do
  use Ecto.Schema

  @derive {Poison.Encoder, only: [:id, :name, :phone]}
  schema "players" do
    field :name
    field :phone

    timestamps
  end
end