class Fixnum
 define_method(:coin) do
   counter = self
   until counter .==(0)
     if self >= 25
       number_q = self / 25
        counter = self % 25
     elsif counter >= 10
       number_d = counter / 10
       counter = counter % 10

     elsif counter >= 5
       number_n = counter / 5
       counter = counter % 5
     elsif counter <= 4
       binding.pry
       number_p = counter / 1
       counter = counter % counter
     else
       break if counter == 0
     end
   end
  number_q.to_s() + " quarter, " + (number_d.to_s() + " dime, ") + (number_n.to_s() + "nickel, ") + (number_p.to_s() + " penny")
 end
end



# class Fixnum
#  define_method(:coin) do
#    counter = self
#    until counter .==(0) do
#      if self >= 25
#        number_q = self / 25
#         counter = self % 25
#      elsif counter >= 10
#        number_d = counter / 10
#        counter = counter % 10
#      elsif counter >= 5
#        number_n = counter / 5
#        counter = counter % 5
#      elsif counter <= 4
#        number_p = counter / 1
#      end
#      counter = counter % counter
#    end
#   number_q.to_s() + " quarter, " + (number_d.to_s() + " dime, ") + (number_n.to_s() + " nickel, ") + (number_p.to_s() + " penney, ")
#  end
# end
