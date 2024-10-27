defmodule PhoenixUiWeb.HomeLive.Index do
  use PhoenixUiWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, message: "Hello, Phoenix!")}
  end

  def render(assigns) do
    ~H"""
    <div class="container mt-4">
      <div class="bg-sky-50 p-8 rounded-md">
        <h1 class="font-medium text-xl text-zinc-900">Phoenix UI</h1>

        <h2 class="font-medium text-zinc-500">
          UI components for the phoenix framework - tailwindcss based
        </h2>

        <p class="font-medium text-7xl mt-8">
          <span class=" text-sky-500">Copy</span> <span class="text-sky-600">Paste</span>
          <span class=" text-sky-700">Adjust</span>
        </p>
      </div>

      <div class="mt-20 max-w-2xl">
        <.h2>
          Get Started
        </.h2>

        <p class="text-zinc-700">
          Welcome to Phoenix UI Components! This library provides a collection of copy-pastable UI components for Phoenix Framework projects. Paste the components into your codebase and adjust it to match your specific needs.
        </p>

        <p class="mt-10 mb-1 font-medium">
          Steps
        </p>

        <ol class="list-decimal pl-8 space-y-2 text-gray-800">
          <li>Browse components</li>

          <li>Copy component from Github</li>

          <li>
            Paste into your codebase e.g.
            <span class="font-mono bg-gray-100 px-2 py-1 rounded">./components/ui/button.ex</span>
          </li>
        </ol>
      </div>
    </div>
    """
  end
end
