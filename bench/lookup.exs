data = <<0::size(100 * 1024 * 1024)>>

:tab = :ets.new(:tab, [:named_table])
true = :ets.insert(:tab, {:data, data})
:ok = :persistent_term.put(:data, data)

Benchee.run(
  %{
    "control" => fn -> Enum.each(1..1000, fn _ -> data end) end,
    "ets" => fn -> Enum.each(1..1000, fn _ -> :ets.lookup_element(:tab, :data, 2) end) end,
    "persistent_term" => fn -> Enum.each(1..1000, fn _ -> :persistent_term.get(:data) end) end
  },
  memory_time: 2
)
