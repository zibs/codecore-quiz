require "benchmark"
# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

def return_even_loop(n)
  evens = []
  (1..n).each do |num|
    evens.push(num * 2)
  end
  evens
end

def return_even_recursion(n, i = 1)
  if i == n
    [i * 2]
  else
    [i * 2] + return_even_recursion(n, i + 1)
  end
end

# benchmarking

Benchmark.bm do |x|
  x.report do
    def return_even_loop(n)
      evens = []
      (1..n).each do |num|
        evens.push(num * 2)
      end
      evens
    end
  end
end

Benchmark.bm do |x|
  x.report do
    def return_even_recursion(n, i = 1)
      if i == n
        [i * 2]
      else
        [i * 2] + return_even_recursion(n, i + 1)
      end
    end
  end
end

Benchmark.bm do |x|
  x.report do
    1_000_000.times { return_even_loop(30) }
  end
end

Benchmark.bm do |x|
  x.report do
    1_000_000.times { return_even_recursion(30) }
  end
end

# results:
#        user     system      total        real
#    0.000000   0.000000   0.000000 (  0.000004)
#        user     system      total        real
#    0.000000   0.000000   0.000000 (  0.000005)
#        user     system      total        real
#    3.560000   0.010000   3.570000 (  3.591881)
#        user     system      total        real
#   10.090000   0.060000  10.150000 ( 10.226941)
