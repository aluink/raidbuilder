defmodule Raidbuilder.PlayerController do
  use Raidbuilder.Web, :controller
  alias Raidbuilder.Player

  plug :action

  def index(conn, _params) do
    render conn, players: Repo.all(Player)
  end
end