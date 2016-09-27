defmodule Raidbuilder.PlayerView do
  use Raidbuilder.Web, :view

  def render("index.json", %{players: players}) do
    players
  end
end