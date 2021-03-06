defmodule Chatbot.MixProject do
  use Mix.Project

  def project do
    [
      app: :chatbot,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Chatbot.Application, []}
    ]
  end

  defp deps do
    [
      {:gen_tcp_accept_and_close, "~> 0.1.0"},
      {:httpoison, "~> 1.6"},
      {:jason, "~> 1.2"},
      {:websocket_client, "~> 1.4"}
    ]
  end
end
