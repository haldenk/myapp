defmodule MyappWeb.HelloHTML do
  use MyappWeb, :html

  embed_templates "hello_html/*"

  attr :messenger, :string, required: true

  def greet(assigns) do
    ~H"""
    <h2>Hello World, from {@messenger}!</h2>
    """
  end
end
