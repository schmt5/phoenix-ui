defmodule PhoenixUiWeb.Ui.Link do
  use Phoenix.Component

  attr :navigate, :string, default: nil
  attr :patch, :string, default: nil
  attr :class, :string, default: nil
  attr :variant, :string, default: "link"
  attr :rest, :global, include: ~w(href)

  slot :inner_block, required: true

  def ui_link(assigns) do
    ~H"""
    <.link {@rest} class={variant_class(@variant)} navigate={@navigate} patch={@patch}>
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end

  defp variant_common_class do
    "h-10 inline-grid place-content-center rounded-md transition duration-150 ease-in-out font-medium leading-6 active:translate-y-px"
  end

  defp variant_class("link") do
    variant_common_class() <>
      " " <>
      "hover:underline text-sky-700"
  end

  defp variant_class("filled") do
    variant_common_class() <>
      " " <>
      "border-transparent bg-sky-700 hover:bg-sky-800 text-white active:text-white/90 py-2 px-6 border"
  end

  defp variant_class("outline") do
    variant_common_class() <>
      " " <> "border-sky-700 text-sky-700 hover:bg-sky-50 py-2 px-6 border"
  end

  defp variant_class("soft") do
    variant_common_class() <>
      " " <> "border-transparent text-sky-700 bg-sky-50 hover:bg-sky-100 py-2 px-6 border"
  end
end
