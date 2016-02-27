User.transaction do
	
	User.create( :name => 'dave', 
	    :password =>'dave', 
	    :password_confirmation => 'dave')

	User.create( :name => 'mary', 
	    :password =>'mary', 
	    :password_confirmation => 'mary')
end

Product.create!(title: 'C Programming',
  description: 
    %{<p>
        C Programming Language in a snap. Learn all the foundations about the C Language.
      </p>},
  image_url:   open('app/assets/images/cprog.jpg'),    
  price: 69.95, user_id: 3)

Product.create!(title: 'UNIX Programming',
  description: 
    %{<p>
        Unix Shell Programming is a tutorial aimed at helping Unix and Linux users 
        get optimal performance out of their operating out of their operating system. 
        It shows them how to take control of their systems and work efficiently by 
        harnessing the power of the shell to solve common problems. The reader learns 
        everything he or she needs to know to customize the way a Unix system responds.
      </p>},
  image_url:   open('app/assets/images/unix.jpg'),    
  price: 29.95, user_id: 3)

  Product.create!(title: 'Intro to Java Programming',
  description: 
    %{<p>
        Daniel Liang teaches concepts of problem-solving and object-oriented programming 
        using a fundamentals-first approach. Beginning programmers learn critical 
        problem-solving techniques then move on to grasp the key concepts of 
        object-oriented, GUI programming, advanced GUI and Web programming using Java. 
      </p>},
  image_url:   open('app/assets/images/java.jpg'),    
  price: 99.95, user_id: 4)