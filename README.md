# BowlingGameKata

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bowling_game_kata` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bowling_game_kata, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bowling_game_kata>.

## Usage

```bash
#!/bin/bash
git clone https://github.com/TORIFUKUKaiou/bowling_game_kata.git
cd bowling_game_kata
```

```bash
#!/bin/bash
docker pull hexpm/elixir:1.14.2-erlang-25.2-alpine-3.16.3
```

### IEx

```bash
#!/bin/bash
docker run --rm -v $PWD:/app -it hexpm/elixir:1.14.2-erlang-25.2-alpine-3.16.3 sh -c "cd /app && iex -S mix"

iex> BowlingGameKata.score([{1, 4}, {4, 5}, {6, 4}, {5, 5}, {10}, {0, 1}, {7, 3}, {6, 4}, {10}, {2, 8, 6}])

iex> BowlingGameKata.score!([{1, 4}, {4, 5}, {6, 4}, {5, 5}, {10}, {0, 1}, {7, 3}, {6, 4}, {10}, {2, 8, 6}])
```

### Main module

```bash
#!/bin/bash
docker run --rm -v $PWD:/app hexpm/elixir:1.14.2-erlang-25.2-alpine-3.16.3 sh -c "cd /app && mix run -e \"Main.main([{1, 4}, {4, 5}, {6, 4}, {5, 5}, {10}, {0, 1}, {7, 3}, {6, 4}, {10}, {2, 8, 6}])\""
```
