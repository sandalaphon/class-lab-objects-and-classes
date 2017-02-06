require('minitest/autorun')
require_relative('./class_lab_library')

require('minitest/rg')

class Test_Class_Lab_Libray < MiniTest::Test

  def test_list_all_books
    new_lib= Library.new
    expected = "book 1: lord_of_the_rings. Last rented by: Jeff on 01/12/16 \nbook 2: The Dice Man. Last rented by: Bob on 01/01/17 \nbook 3: Catch 22. Last rented by: Claudia Schiffer on 03/01/17 \n"
#   
puts expected
actual = new_lib.list_all_books
# new_lib.list_all_books
    assert_equal(expected, actual)
  end

def test_info_by_title
  new_lib= Library.new
  expected = "Is book number 1. Last rented by: Jeff on 01/12/16"
  actual = new_lib.info_by_title("lord_of_the_rings")
  assert_equal(expected, actual)
end

def test_only_rental
 new_lib= Library.new
   expected = "Last rented by: Jeff on 01/12/16"
   actual = new_lib.only_rental("lord_of_the_rings")
   assert_equal(expected, actual)
 end 

def test_add_book
  new_lib= Library.new
  expected={ 
        title: "War and Peace",
        rental_details: { 
         student_name: "", 
         date: ""
       }
     }
     actual = new_lib.add_book("War and Peace")
     assert_equal(expected, actual)

end

def test_rent_book
  new_lib = Library.new
  expected = { 
        title: "Catch 22",
        rental_details: { 
         student_name: "Uma Thurman", 
         date: "02/03/17"
       }
     }
     actual = new_lib.rent_book("Catch 22", "Uma Thurman", "02/03/17")
     assert_equal(expected, actual)
end




end