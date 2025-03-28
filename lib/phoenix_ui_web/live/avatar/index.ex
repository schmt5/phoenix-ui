defmodule PhoenixUiWeb.AvatarLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div>
        <div class="flex items-baseline justify-between">
          <.h2>Avatar</.h2>

          <.ui_link
            target="_blank"
            href="https://github.com/schmt5/phoenix-ui/tree/main/lib/phoenix_ui_web/components/ui"
          >
            <span>
              Copy from Github <.icon name="hero-arrow-top-right-on-square" class="w-5 h5" />
            </span>
          </.ui_link>
        </div>
      </div>

      <div class="mt-16">
        <.avatar>
          TS
        </.avatar>
      </div>
    </div>
    """
  end
end
