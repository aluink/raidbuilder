defmodule Raidbuilder.Router do
  use Phoenix.Router, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Raidbuilder do
    pipe_through :api

    resources "/players", PlayerController
  end
end
