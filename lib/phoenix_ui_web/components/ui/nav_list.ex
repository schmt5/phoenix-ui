defmodule PhoenixUiWeb.Ui.NavList do
  use Phoenix.Component

  attr :current_path, :string, default: nil
  attr :class, :string, default: nil
  attr :rest, :global

  slot :nav_item, required: true do
    attr :navigate, :string
    attr :patch, :string
  end

  def nav_list(assigns) do
    ~H"""
    <nav aria-label="Sidebar" class={["flex flex-1 flex-col", @class]} {@rest}>
      <ul :for={item <- @nav_item} role="list" class="-mx-2 space-y-1">
        <li>
          <.link navigate={item.navigate} class={link_styles(@current_path, item.navigate)}>
            <%= render_slot(item) %>
          </.link>
        </li>
      </ul>
    </nav>
    """
  end

  defp link_styles(current_path, navigate_path) do
    item_styles(active_path?(current_path, navigate_path))
  end

  defp item_styles(false) do
    "group flex items-center rounded-md p-2 text-sm font-medium text-zinc-700 hover:bg-zinc-50 hover:text-zinc-900"
  end

  defp item_styles(true) do
    "group flex items-center rounded-md p-2 text-sm font-medium bg-zinc-100 text-sky-900"
  end

  defp active_path?(current_path, navigate_path) do
    current_path == navigate_path
  end
end
