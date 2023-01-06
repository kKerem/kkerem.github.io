require_relative 'bench_helper'

module BenchMath
  module FFIMath
    extend FFI::Library
    ffi_lib FFI::Platform.windows? ? FFI::Library::LIBC : 'm'
    attach_function :cos, [ :double ], :double
    attach_function :cosf, [ :float ], :float
  end
  if FFIMath.cos(0) != 1
    raise ArgumentError, "FFI.cos returned incorrect value"
  end
  puts "Benchmark FFI cos(0) performance, #{ITER}x"
  10.times {
    puts Benchmark.measure {
      ITER.times { FFIMath.cos(0) }
    }
  }
  puts "Benchmark FFI cosf(0) performance, #{ITER}x"
  10.times {
    puts Benchmark.measure {
      ITER.times { FFIMath.cosf(0) }
    }
  }

  puts "Benchmark Math.cos(0) performance, #{ITER}x"
  10.times {
    puts Benchmark.measure {
      ITER.times { Math.cos(0) }
    }
  }
end
