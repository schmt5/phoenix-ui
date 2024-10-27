defmodule PhoenixUiWeb.HeadingLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div>
        <div class="flex items-baseline justify-between">
          <.h2>Heading</.h2>

          <.ui_link
            target="_blank"
            href="https://github.com/schmt5/phoenix-ui/blob/90e928997ff73096f6c0131047ab69b73653abcb/lib/phoenix_ui_web/components/ui/heading.ex"
          >
            <span>
              Copy from Github <.icon name="hero-arrow-top-right-on-square" class="w-5 h5" />
            </span>
          </.ui_link>
        </div>

        <p>
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
        </p>
      </div>

      <div>
        <.h2>
          Heading 2
        </.h2>

        <p>
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
        </p>
      </div>

      <div>
        <.h3>
          Heading 3
        </.h3>

        <p>
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
        </p>
      </div>
    </div>
    """
  end
end
