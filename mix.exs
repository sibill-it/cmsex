defmodule CMSEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :cmsex,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: dialyzer(),
      erlc_paths: ["src"],
      asn1_options: asn1_options()
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
      {:asn1_compiler, "~> 0.1", runtime: false, only: [:dev]},
      {:credo, "~> 1.0", runtime: false, only: [:dev]},
      {:dialyxir, "~> 1.0", runtime: false, only: [:dev]},
      {:ex_doc, "~> 0.30", runtime: false, only: [:dev]}
    ]
  end

  defp asn1_options, do: [maps: true]

  defp dialyzer, do: [ignore_warnings: ".dialyzer.ignore"]
end
