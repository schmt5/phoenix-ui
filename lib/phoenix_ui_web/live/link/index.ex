defmodule PhoenixUiWeb.LinkLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="flex items-baseline justify-between mb-8">
        <.h2>Link</.h2>

        <.ui_link
          target="_blank"
          href="https://github.com/schmt5/phoenix-ui/tree/main/lib/phoenix_ui_web/components/ui"
        >
          <span>
            Copy from Github <.icon name="hero-arrow-top-right-on-square" class="w-5 h5" />
          </span>
        </.ui_link>
      </div>

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
