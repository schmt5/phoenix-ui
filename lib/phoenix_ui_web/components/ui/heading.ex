defmodule PhoenixUiWeb.Ui.Heading do
  use Phoenix.Component

  attr :class, :string, default: ""
  attr :rest, :global

  slot :inner_block, required: true

  def h1(assigns) do
    ~H"""
    <h1 class={["text-zinc-950 text-5xl mt-8 mb-2", @class]} {@rest}>
      <%= render_slot(@inner_block) %>
    </h1>
    """
  end


  attr :class, :string, default: ""
  attr :rest, :global

  slot :inner_block, required: true

  def h2(assigns) do
    ~H"""
    <h2 class={["text-zinc-950 text-4xl mt-8 mb-2", @class]} {@rest}>
      <%= render_slot(@inner_block) %>
    </h2>
    """
  end


  attr :class, :string, default: ""
  attr :rest, :global

  slot :inner_block, required: true

  @spec h3(map()) :: Phoenix.LiveView.Rendered.t()
  def h3(assigns) do
    ~H"""
    <h3 class={["text-zinc-950 text-2xl mt-8 mb-2", @class]} {@rest}>
      <%= render_slot(@inner_block) %>
    </h3>
    """
  end
end
