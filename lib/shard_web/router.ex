defmodule ShardWeb.Router do
  use ShardWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {ShardWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ShardWeb do
    pipe_through :browser
    get "/", PageController, :index
  end

  scope "/", ShardWeb do
    pipe_through :api
    # JSON map endpoint expected by tests
    get "/map", MapController, :index
  end

  # If you have admin routes, re-enable them here (uncomment if applicable):
  # scope "/admin", ShardWeb do
  #   pipe_through :browser
  #   resources "/monsters", Admin.MonsterController
  #   resources "/rooms", Admin.RoomController
  #   resources "/exits", Admin.ExitController
  # end
end
