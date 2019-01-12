require "test_helper"

class PrimefactorsTest < Minitest::Test

  def test_nothing
    assert true
  end

  def setup
    @primefactors = Primefactors.new
  end

  def test_primefactors_of_1_is_empty_list
    assert_equal([], @primefactors.of(1))
  end

  def test_primefactors_of_2_is_list_2
    assert_equal([2], @primefactors.of(2))
  end

  def test_primefactors_of_3_is_list_3
    assert_equal([3], @primefactors.of(3))
  end

  def test_primefactors_of_4_is_list_2_2
    assert_equal([2, 2], @primefactors.of(4))
  end

  def test_primefactors_of_6_is_list_2_3
    assert_equal([2, 3], @primefactors.of(6))
  end

  def test_primefactors_of_9_is_list_3_3
    assert_equal([3, 3], @primefactors.of(9))
  end

  def test_acceptance
    assert_equal([2, 2, 2, 2, 3, 3, 3, 11, 13, 17], @primefactors.of(2*2*2*2*3*3*3*11*13*17))
  end

end
