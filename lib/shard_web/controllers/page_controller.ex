defmodule ShardWeb.PageController do
  use ShardWeb, :controller

  # Keep root simple so tests stay green
  def index(conn, _params) do
    html(conn, """
    <!doctype html>
    <html lang="en"><head><meta charset="utf-8"><title>Shard</title></head>
    <body><h1>Phoenix Framework</h1><p>It works.</p></body></html>
    """)
  end
end
