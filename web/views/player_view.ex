defmodule Raidbuilder.PlayerView do
  use Raidbuilder.Web, :view

  def render("index.json-api", %{players: players}) do
    players
  end
end