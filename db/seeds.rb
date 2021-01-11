more_books = [
    {:title => 'Nineteen Eighty-Four', :genre => 'Science fiction', 
      :description => 'Social sci-fi from the era of Soviet growth where a nasty political system defines the plot.', :isbn_number => '9780451524935',
      :publish_date => '07/01/1950', :author => 'George Orwell'},
    {:title => 'Hamlet', :genre => 'Drama', 
      :description => 'Hamlet is Shakespeare`s  most popular, and most puzzling, play.', :isbn_number => '9780743477123',
      :publish_date => '01/07/1992', :author => 'William Shakespeare'},
    {:title => 'The Adventures of Tom Sawyer', :genre => 'Action and Adventure', 
      :description => 'Mark Twain created the memorable characters Tom Sawyer and Huckleberry Finn drawing from the experiences of boys he grew up with in Missouri.', 
      :isbn_number => '9781948132824', :publish_date => '06/05/2018', :author => 'Mark Twain'},
    {:title => 'The President Is Missing', :genre => 'Mystery', 
      :description => 'The President Is Missing confronts a threat so huge that it jeopardizes not just Pennsylvania Avenue and Wall Street, but all of America.', 
      :isbn_number => '9781538713839', :publish_date => '11/06/2019', :author => 'Bill Clinton'},
    {:title => 'It Ends with Us', :genre => 'Romance', 
      :description => 'Combining a captivating romance with a cast of all-too-human characters, Colleen Hoover’s It Ends With Us is an unforgettable tale of love', 
      :isbn_number => '9781501110368', :publish_date => '02/08/2016', :author => 'Colleen Hoover'}
  ]
   
  more_books.each do |book|
    Book.create!(book)
  end
