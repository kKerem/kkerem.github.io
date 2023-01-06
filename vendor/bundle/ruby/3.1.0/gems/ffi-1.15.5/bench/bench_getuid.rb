require_relative 'bench_helper'

module BenchGetuid
  iter = ITER

  module Posix
    extend FFI::Library
    ffi_lib FFI::Library::LIBC
    attach_function :getuid, [], :uint
  end

  puts "uid=#{Process.pid} Posix.getuid=#{Posix.getuid}"
  puts "Benchmark FFI getuid performance, #{iter}x calls"

  10.times {
    puts Benchmark.measure {
      iter.times { Posix.getuid }
    }
  }

  puts "Benchmark Process.uid performance, #{iter}x calls"
  10.times {
    puts Benchmark.measure {
      iter.times { Process.uid }
    }
  }
end unless FFI::Platform.windows?
