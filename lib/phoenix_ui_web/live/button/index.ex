defmodule PhoenixUiWeb.ButtonLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <.h2>Button</.h2>

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
