defmodule PhoenixUiWeb.TableLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    users = [
      %{
        id: 1,
        name: "Lindsay Walton",
        title: "Front-end Developer",
        email: "lindsay.walton@example.com",
        role: "Member"
      },
      %{
        id: 2,
        name: "Courtney Henry",
        title: "Designer",
        email: "courtney.henry@example.com",
        role: "Admin"
      },
      %{
        id: 3,
        name: "Tom Cook",
        title: "Director of Product",
        email: "tom.cook@example.com",
        role: "Member"
      },
      %{
        id: 4,
        name: "Whitney Francis",
        title: "Copywriter",
        email: "whitney.francis@example.com",
        role: "Admin"
      },
      %{
        id: 5,
        name: "Leonard Krasner",
        title: "Senior Designer",
        email: "leonard.krasner@example.com",
        role: "Owner"
      },
      %{
        id: 6,
        name: "Floyd Miles",
        title: "Principal Designer",
        email: "floyd.miles@example.com",
        role: "Member"
      }
    ]

    {:ok, socket |> stream(:users, users)}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <div>
        <div class="flex items-baseline justify-between">
          <.h1>Table</.h1>

          <.ui_link
            target="_blank"
            href="https://github.com/schmt5/phoenix-ui/tree/8bf386312a0a66ee0f4c938d6b654abb3c54808b/lib/phoenix_ui_web/components/ui"
          >
            <span>
              Copy from Github <.icon name="hero-arrow-top-right-on-square" class="w-5 h5" />
            </span>
          </.ui_link>
        </div>
      </div>

      <div class="mt-16">
        <.h2 class="mb-8">Default</.h2>

        <.table id="users" rows={@streams.users}>
          <:col :let={{_id, user}} label="Name"><%= user.name %></:col>

          <:col :let={{_id, user}} label="Title"><%= user.title %></:col>

          <:col :let={{_id, user}} label="Email"><%= user.email %></:col>

          <:col :let={{_id, user}} label="Role"><%= user.role %></:col>
        </.table>
      </div>

      <div class="mt-16">
        <.h2 class="mb-8">Emphasis first column</.h2>

        <.table id="users" rows={@streams.users} first_col_emphasised?={true}>
          <:col :let={{_id, user}} label="Name"><%= user.name %></:col>

          <:col :let={{_id, user}} label="Title"><%= user.title %></:col>

          <:col :let={{_id, user}} label="Email"><%= user.email %></:col>

          <:col :let={{_id, user}} label="Role"><%= user.role %></:col>
        </.table>
      </div>

      <div class="mt-16">
        <.h2 class="mb-8">Striped rows</.h2>

        <.table id="users" rows={@streams.users} rows_striped?={true}>
          <:col :let={{_id, user}} label="Name"><%= user.name %></:col>

          <:col :let={{_id, user}} label="Title"><%= user.title %></:col>

          <:col :let={{_id, user}} label="Email"><%= user.email %></:col>

          <:col :let={{_id, user}} label="Role"><%= user.role %></:col>
        </.table>
      </div>
    </div>
    """
  end
end
