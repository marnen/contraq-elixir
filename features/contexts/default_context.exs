defmodule WhiteBread.DefaultContext do
  use WhiteBread.Context
  # TODO: figure out how to load steps from multiple files
  # :filelib.fold_files "#{__DIR__}/../step_definitions", "\.exs$", true, &Code.eval_file/2, []

  given_ "nothing in particular", fn state ->
    {:ok, state}
  end

  then_ ~r/^(?<x>\S+) should (?<not>not )?equal (?<y>\S+)$/, fn state, %{x: x, y: y, not: negation} ->
    assert (x == y) == (negation == "") # TODO: figure out how to use ESpec "expect" here
    {:ok, state}
  end
end
