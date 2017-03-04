nested = [
  buttercup: %{
    actor: %{
        first: "robin",
        last: "wright"
    },
    role: "princess"
  },
  westley: %{
    actor: %{
        first: "cary",
        last: "ewles"
    },
    role: "farm boy"
  }
]

IO.inspect get_in(nested, [:buttercup])
IO.inspect get_in(nested, [:buttercup, :actor])
IO.inspect get_in(nested, [:buttercup, :actor,:first])
IO.inspect put_in(nested, [:westley, :actor,:last], "elwes")
nested = put_in(nested, [:westley, :actor,:last], "elwes")
IO.inspect nested