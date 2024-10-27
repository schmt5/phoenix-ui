defmodule PhoenixUiWeb.ButtonLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="flex items-baseline justify-between">
        <.h2>Button</.h2>

        <.ui_link
          target="_blank"
          href="https://github.com/schmt5/phoenix-ui/blob/90e928997ff73096f6c0131047ab69b73653abcb/lib/phoenix_ui_web/components/ui/button.ex"
        >
          <span>
            Copy from Github <.icon name="hero-arrow-top-right-on-square" class="w-5 h5" />
          </span>
        </.ui_link>
      </div>

      <div class="mt-6 flex gap-4">
        <.button>
          Click me
        </.button>

        <.button variant="outline">
          Click me
        </.button>

        <.button variant="soft">
          Click me
        </.button>
      </div>

      <div class="mt-6 flex gap-4">
        <.button icon_only>
          <.icon name="hero-bell" />
        </.button>

        <.button variant="outline" icon_only>
          <.icon name="hero-bell" />
        </.button>

        <.button variant="soft" icon_only>
          <.icon name="hero-bell" />
        </.button>
      </div>
    </div>
    """
  end
end
