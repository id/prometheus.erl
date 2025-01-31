defmodule Prometheus.Mixfile do
  use Mix.Project

  def project do
    [
      app: :prometheus,
      version: "3.1.3",
      description: description(),
      package: package(),
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
    Prometheus monitoring system and time series database client in Erlang.
    """
  end

  def application do
    [
      mod: {:prometheus, []}
    ]
  end

  defp deps do
    []
  end

  defp package do
    [
      build_tools: ["rebar3"],
      maintainers: ["Ilya Khaprov"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/deadtrickster/prometheus.erl",
        "Prometheus.ex" => "https://hex.pm/packages/prometheus_ex",
        "Ecto Instrumenter" => "https://hex.pm/packages/prometheus_ecto",
        "Phoenix Instrumenter" => "https://hex.pm/packages/prometheus_phoenix",
        "Plugs Instrumenter/Exporter" => "https://hex.pm/packages/prometheus_plugs",
        "Process info Collector" => "https://hex.pm/packages/prometheus_process_collector"
      },
      files: ["bin", "src", "include", "README.md", "LICENSE", "rebar.config"]
    ]
  end
end
