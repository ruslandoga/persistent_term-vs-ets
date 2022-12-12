```console
$ MIX_ENV=bench mix run bench/lookup.exs

Operating System: macOS
CPU Information: Apple M1
Number of Available Cores: 8
Available memory: 8 GB
Elixir 1.14.2
Erlang 25.1.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
reduction time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 36 s

Benchmarking control ...
Benchmarking ets ...
Benchmarking module ...
Benchmarking persistent_term ...

Name                      ips        average  deviation         median         99th %
control              171.11 K        5.84 μs   ±258.57%        5.63 μs        6.42 μs
module               164.53 K        6.08 μs   ±106.37%           6 μs        6.25 μs
persistent_term       76.24 K       13.12 μs    ±17.27%       13.04 μs       13.33 μs
ets                    4.60 K      217.28 μs     ±5.72%      215.67 μs      278.42 μs

Comparison:
control              171.11 K
module               164.53 K - 1.04x slower +0.23 μs
persistent_term       76.24 K - 2.24x slower +7.27 μs
ets                    4.60 K - 37.18x slower +211.44 μs

Memory usage statistics:

Name               Memory usage
control                    96 B
module                     88 B - 0.92x memory usage -8 B
persistent_term            88 B - 0.92x memory usage -8 B
ets                     48088 B - 500.92x memory usage +47992 B

**All measurements for memory usage were the same**
```
