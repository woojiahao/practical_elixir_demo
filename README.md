# Practical Elixir Demo

## What is this?

This is the demo repository for the talk: "Practical Functional Programming" that I gave during
NUS Hackers' Hackerschool. The accompanying guide is found at:
[[https://practical-elixir.woojiahao.com]]

## Navigating this repository

There are four key branches for this repository:

1. `main`: contains the code for base Phoenix
2. `liveview-base`: contains the code for migrating from base Phoenix to Phoenix LiveView without
   any further additions
3. `liveview` (this branch): contains the completed code for Phoenix LiveView (including creating
   to-dos and marking to-dos as done/not done)
4. `complete`: contains the fully completed code with Phoenix LiveView and data persistence with
   SQLite3

Pull from each branch to get the latest code using:

```
git fetch
git switch main/liveview-base/liveview/complete
```

## Getting started

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix