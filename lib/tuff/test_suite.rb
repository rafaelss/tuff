require "test/unit/testsuite"

module Test
  module Unit
    class TestSuite

      def run(result, &progress_block)
        yield(STARTED, name)
        run_startup(result)
        @tests.each do |test|
          test.run(result, &progress_block)
          break unless result.passed?
        end
        run_shutdown(result)
        yield(FINISHED, name)
      end
    end
  end
end
