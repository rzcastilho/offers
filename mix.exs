defmodule Offers.MixProject do
  use Mix.Project

  def project do
    [
      app: :offers,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Offers.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded, "~> 1.2"},
      {:jason, "~> 1.2"},
      {:eventstore, "~> 1.3"},
      {:commanded_eventstore_adapter, "~> 1.2"},
      {:commanded_ecto_projections, "~> 1.2"},
      {:ecto, "~> 3.7"},
      {:myxql, "~> 0.5.0"}
    ]
  end
end
