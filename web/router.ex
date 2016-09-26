defmodule Raidbuilder.Router do
  use Raidbuilder.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Raidbuilder do
    pipe_through :api # Use the default browser stack

    get "/", PageController, :index
    get "/foo", PageController, :foo
  end

end
