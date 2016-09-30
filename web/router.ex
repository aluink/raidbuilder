defmodule Raidbuilder.Router do
  use Phoenix.Router, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug Raidbuilder.DeserializePlug
  end

  scope "/api", Raidbuilder do
    pipe_through :api

    resources "/players", PlayerController
  end
end
