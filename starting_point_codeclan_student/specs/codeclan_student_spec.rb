require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < Minitest::Test

    def test_name()
        student = Student.new("Bob", "E41")
        assert_equal("Bob", student.name())
    end

    def test_cohort()
        student = Student.new("Robbie", "E30")
        assert_equal("E30", student.cohort())
    end

    def test_set_name()
        student = Student.new("Robert", "E43")
        student.set_name("Jacob")
        assert_equal("Jacob", student.name())
    end

    def test_set_cohort()
        student = Student.new("Emmma", "E41")
        student.set_cohort("E38")
        assert_equal("E38", student.cohort())
    end


    def test_student_talks
        student = Student.new("Jessica", "E42")
        string = student.student_talks()
        assert_equal("Hi I am talking!", string)
    end

    def test_say_favourite_language()
        student = Student.new("Jane", "E42")
        favourite_language = student.say_favourite_language("Ruby")
        assert_equal("I love Ruby!", favourite_language)
    end

end