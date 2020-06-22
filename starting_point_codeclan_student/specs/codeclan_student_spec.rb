require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestCodeclanStudent < Minitest::Test

    def test_student_talks
        student = Student.new("Jessica", "E40")
        string = student.student_talks()
        assert_equal("Hi, I am talking!", string)
    end

    def
        
    end

end