defmodule PhoenixUiWeb.Ui.Avatar do
  use Phoenix.Component

  attr :class, :string, default: nil
  attr :rest, :global

  slot :inner_block, required: true

  def avatar(assigns) do
    ~H"""
    <span
      class={["inline-flex items-center justify-center size-10 bg-gray-900 rounded-full", @class]}
      {@rest}
    >
      <span class="text-sm font-medium text-gray-50">
        <%= render_slot(@inner_block) %>
      </span>
    </span>
    """
  end
end
