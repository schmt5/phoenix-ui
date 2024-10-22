defmodule PhoenixUiWeb.HomeLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, message: "Hello, Phoenix!")}
  end


  def render(assigns) do
    ~H"""
    <div class="container">
      <h1><%= @message %></h1>
      <p>From Phoenix LiveView</p>
    </div>
    """
  end
end
