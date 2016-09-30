defmodule Raidbuilder.Router do
  use Raidbuilder.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug Raidbuilder.DeserializePlug
  end

  scope "/api", Raidbuilder do
    pipe_through :api # Use the default browser stack

    resources "/players", PlayerController
  end

end
