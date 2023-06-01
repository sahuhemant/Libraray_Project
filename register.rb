module Register
  def registration
    print "Registeration is required ::\n"
	  print"```````````````````````````````````````\n"
	  print "Enter Full Name :"
	  nam=gets.chomp
	  print "\nSet User Id :"
	  a=gets.chomp
	  require 'io/console'
	  print "Enter Passward :"
	  b = STDIN.noecho(&:gets).chomp
	  print"\n~Registration Successfully...\n "
	  print "Enter Login Id :"
	  log=gets.chomp
	  print "Enter Password :"
	  ps=gets.chomp
    if a==log && b==ps
      puts "\nLogin success..."
      puts "~~~~~~~~~~~~~~~~~~~~~~~~Books Available~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "\n"
      print"\n
      1.The Immortals of Meluha        11.Do Epic Shit
      2.The Secret of the Nagas        12.Rich Dad Poor Dad
      3.The Oath of the Vayuputra      13.The Mind of Leader
      4.Ravan                          14.The Silent Patient
      5.The Blue Umbrella              15.It End with us
      6.Till The Last Breadth          16.Thing we Never Got Over
      7.The Green Mile                 17.Elon Musk
      8.The Kite Runner                18.The Intelligent Investor
      9.The Alchemist                  19.Heart Of Darkness
      10.Atomic Habit                  20.Love Deciption
      "
      print "\nNote : Press code number Which book you Want to buy..."
      id=gets.chomp.to_i
      case id

      when 1..20
        puts "\nFill Details For Shipping\n"
        print "-------------------------\n"
        print "Enter the Name : "
        na=gets.chomp
        print "Enter The Mobile Number : "
        no=gets.chomp.to_i
        print "Enter Address : "
        add=gets.chomp
        t=Time.now
        print "................................"
        print ">>>>>>>>>--Ordered Confirm --<<<<<<<<<<<<<\n"
        print "Shipping Detail\n"
        puts "Name : #{na}"
        puts "Mobile Number : #{no}"
        puts "Address : #{add}"
        puts "Time of Ordered : #{t}"
        puts "      ~  Thankyou  ~ "
      else
        puts "This Code number Book is not Available try again"
      end
    else
        puts "Wrong Login Password try again.."
    end
  end
end