defmodule EredisCluster.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.trim

  def project do
    [app: :erl_creole,
     version: @version,
     description: "Converting strings between multibyte encodings and Unicode",
     package: package(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    []
  end

  defp package do
    [files: ~w(src mix.exs README.md COPYING VERSION),
     maintainers: ["Takeru Ohta"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/sile/erl-creole"}]
  end
end
