defmodule PhoenixUiWeb.BadgeLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="flex items-baseline justify-between">
        <.h2>Badge</.h2>

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
