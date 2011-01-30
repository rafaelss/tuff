require "minitest/autorun"
require "mocha"
require "tuff/test_suite"

class TestTestSuite < MiniTest::Unit::TestCase

  def test_run_with_fail_test
    result = mock
    result.expects(:passed?, false)

    test_1 = mock
    test_1.expects(:run).with(result)

    test_2 = mock
    test_2.expects(:run).never

    progress_block = proc { }

    suite = Test::Unit::TestSuite.new
    suite.instance_variable_set(:@tests, [ test_1, test_2 ])
    suite.run(result, &progress_block)
  end

  def test_run
    result = MiniTest::Mock.new
    result.expect(:passed?, true)

    test_1 = mock
    test_1.expects(:run).with(result)

    test_2 = mock
    test_2.expects(:run).with(result)

    progress_block = proc { }

    suite = Test::Unit::TestSuite.new
    suite.instance_variable_set(:@tests, [ test_1, test_2 ])
    suite.run(result, &progress_block)
  end
end
