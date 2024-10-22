defmodule PhoenixUiWeb.Ui.Button do
  use Phoenix.Component

  attr :type, :string, default: nil
  attr :class, :string, default: nil
  attr :variant, :string, default: "filled"
  attr :icon_only, :boolean, default: false
  attr :rest, :global, include: ~w(disabled form name value)

  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button type={@type} class={[button_class(@variant), icon_only_class(@icon_only)]} {@rest}>
      <%= render_slot(@inner_block) %>
    </button>
    """
  end

  defp button_common_class do
    "phx-submit-loading:opacity-75 h-10 inline-grid place-content-center rounded-md transition duration-150 ease-in-out py-2 px-6 font-medium leading-6 border active:translate-y-px"
  end

  defp button_class("filled") do
    button_common_class() <>
      " " <> "border-transparent bg-sky-700 hover:bg-sky-800 text-white active:text-white/90"
  end

  defp button_class("outline") do
    button_common_class() <>
      " " <> "border-sky-700 text-sky-700 hover:bg-sky-50"
  end

  defp button_class("soft") do
    button_common_class() <>
      " " <> "border-transparent text-sky-700 bg-sky-50 hover:bg-sky-100"
  end

  defp icon_only_class(true) do
    "w-10"
  end

  defp icon_only_class(false) do
    ""
  end
end
