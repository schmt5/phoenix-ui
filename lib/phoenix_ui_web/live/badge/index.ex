defmodule PhoenixUiWeb.BadgeLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <.h2>Badge</.h2>

      <div class="mt-6 flex gap-4">
        <.badge>
          sale
        </.badge>

        <.badge variant="outline">
          sale
        </.badge>

        <.badge variant="soft">
          sale
        </.badge>
      </div>
    </div>
    """
  end
end
