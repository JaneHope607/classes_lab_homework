require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class CodeclanStudent < Minitest::Test

    def test_name()
        student = Student.new("Bob", "E41")
        assert_equal("Bob", student.name)
    end

    def test_cohort()
        student = Student.new("Robbie", "E32")
        assert_equal("E32", student.cohort)
    end

    def test_student_talks
        student = Student.new("Jessica", "E42")
        string = student.student_talks()
        assert_equal("Hi I am talking!", string)
    end

end