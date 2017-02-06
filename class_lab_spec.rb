require('minitest/autorun')
require_relative('./class_lab')

require('minitest/rg')

class Test_Class_Lab < MiniTest::Test

  def test_Student_get_name
    student = Student.new("Richard", 10)
    assert_equal("Richard", student.name)
  end

  def test_talking
    student = Student.new("Richard", 10)
    assert_equal("I can talk", student.speak)
  end

  def test_fav_lang
    student = Student.new("Richard", 10)
    assert_equal("I love Ruby", student.fav_lang("Ruby"))
  end
end