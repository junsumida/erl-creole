defmodule ErlCreoleTest do
  use ExUnit.Case

  test ".from_string and convert" do
    eucjp = '日本語のmojiretsuですよ' |>  :creole.from_string(:eucjp)
    sjis  = '日本語のmojiretsuですよ' |>  :creole.from_string(:sjis)

    assert is_binary(eucjp)
    assert is_binary(sjis)

    from_eucjp = eucjp |> :creole.convert(:eucjp, :utf8)
    from_sjis  = sjis  |> :creole.convert(:sjis,  :utf8)

    assert "日本語のmojiretsuですよ" == from_eucjp
    assert "日本語のmojiretsuですよ" == from_sjis
  end
end
