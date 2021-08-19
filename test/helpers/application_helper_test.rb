require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

    def setup 
        @const_title_str = "MatPhyLab : Votre nouvelle façon de suivre les cours"
    end

    test "empty string should only return constant title" do
        assert_equal @const_title_str, create_title("")
    end

    test "no empty string should return title and constant title" do
        assert_equal "Home | #{@const_title_str}", create_title("Home")
    end

end