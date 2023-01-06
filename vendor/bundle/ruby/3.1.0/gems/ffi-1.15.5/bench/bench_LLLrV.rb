require_relative 'bench_helper'

module BenchLLLrV
  module LibTest
    extend FFI::Library
    ffi_lib LIBTEST_PATH
    attach_function :bench_s64s64s64_v, [ :long_long, :long_long, :long_long ], :void, :save_errno => false
  end


  puts "Benchmark [ :long_long, :long_long, :long_long ], :void performance, #{ITER}x calls"

  10.times {
    puts Benchmark.measure {
      i = 0; while i < ITER
        LibTest.bench_s64s64s64_v(0, 1, 2)
        i += 1
      end
    }
  }
end
