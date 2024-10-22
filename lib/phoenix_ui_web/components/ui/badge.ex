defmodule PhoenixUiWeb.Ui.Badge do
  use Phoenix.Component

  attr :variant, :string, default: "filled"
  attr :rest, :global

  slot :inner_block, required: true

  def badge(assigns) do
    ~H"""
    <span class={class(@variant)} {@rest}>
      <%= render_slot(@inner_block) %>
    </span>
    """
  end

  defp class_common do
    "h-5 inline-grid place-content-center rounded-full px-4 text-xs font-medium uppercase border"
  end

  defp class("filled") do
    class_common() <>
      " " <> "border-transparent bg-sky-700 text-white"
  end

  defp class("outline") do
    class_common() <>
      " " <> "border-sky-700 text-sky-700"
  end

  defp class("soft") do
    class_common() <>
      " " <> "border-transparent text-sky-700 bg-sky-50"
  end
end
