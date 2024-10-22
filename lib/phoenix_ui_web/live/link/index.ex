defmodule PhoenixUiWeb.LinkLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <.h2>Link</.h2>

      <div class="mt-6 flex gap-4">
        <.ui_link navigate={~p"/"}>
          Navigate
        </.ui_link>

        <.ui_link variant="filled" navigate={~p"/"}>
          Navigate
        </.ui_link>

        <.ui_link variant="outline" navigate={~p"/"}>
          Navigate
        </.ui_link>

        <.ui_link variant="soft" navigate={~p"/"}>
          Navigate
        </.ui_link>
      </div>
    </div>
    """
  end
end
