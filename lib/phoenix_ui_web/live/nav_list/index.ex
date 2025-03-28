defmodule PhoenixUiWeb.NavListLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:current_path, nil)}
  end

  def handle_params(_unsigned_params, uri, socket) do
    path = URI.parse(uri).path

    {:noreply, socket |> assign(:current_path, path)}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div>
        <div class="flex items-baseline justify-between">
          <.h2>Navigation List</.h2>

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
        <.nav_list current_path={@current_path}>
          <:nav_item navigate={~p"/"}>
            <span>Home</span>
          </:nav_item>

          <:nav_item navigate={~p"/button"}>
            <span>Button</span>
          </:nav_item>

          <:nav_item navigate={~p"/nav-list"}>
            <span>Navigation List</span>
          </:nav_item>
        </.nav_list>
      </div>
    </div>
    """
  end
end
