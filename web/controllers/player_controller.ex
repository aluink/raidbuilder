defmodule Raidbuilder.PlayerController do
  use Raidbuilder.Web, :controller
  alias Raidbuilder.Player

  plug :action

  def index(conn, _params) do
    players = Repo.all(Player)
    render conn, players: players
  end
end