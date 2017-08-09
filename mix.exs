defmodule Instaspy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :instaspy,
      version: "0.1.0",
      elixir: "~> 1.4",
      escript: escript_config(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:httpoison, "~> 0.12"}

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp escript_config() do
    [main_module: Instaspy]
  end
end
