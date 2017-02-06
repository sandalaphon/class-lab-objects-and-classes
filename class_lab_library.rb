class Library
  def initialize
    @books = [
      { 
        title: "lord_of_the_rings",
        rental_details: { 
         student_name: "Jeff", 
         date: "01/12/16"
       }
       },
       { 
        title: "The Dice Man",
        rental_details: { 
         student_name: "Bob", 
         date: "01/01/17"
       }
       },
       { 
        title: "Catch 22",
        rental_details: { 
         student_name: "Claudia Schiffer", 
         date: "03/01/17"
       }
     }
   ]
 end

 def list_all_books
  # list = @books
  # return list
  book_string_to_return=""
  counter=0
  @books.each do |book|
    # puts "***********"
    # puts @books[counter]
    # puts @books[counter][:student_name]
    book_string_to_return << "book #{counter+1}: #{@books[counter][:title]}. Last rented by: #{@books[counter][:rental_details][:student_name]} on #{@books[counter][:rental_details][:date]} \n"
    counter+=1
  end
  puts book_string_to_return
  return book_string_to_return
end

def info_by_title(title)

  for book in @books
    counter=1
    if book[:title]==title
      borrower = book[:rental_details][:student_name]
      date_taken = book[:rental_details][:date]

      return "Is book number %d. Last rented by: %s on %s" % [ counter, borrower, date_taken]
      counter+=1
    end
  end
else return "book not found"
end

def only_rental(title)
 return_string = info_by_title(title)
  return_string[0..17]=""
  return_string
end

def add_book(title)
  new_book = { 
        title: "#{title}",
        rental_details: { 
         student_name: "", 
         date: ""
       }
       } 
  @books << new_book
 
  return new_book
end

def rent_book(title, borrower, date)
  counter = 0
  for book in @books
    if book[:title]==title
      @books[counter][:rental_details]={ 
         student_name: "#{borrower}", 
         date: "#{date}"
       }
       return @books[counter]
    end
    counter+=1
  end
  return "book not found"
end

end