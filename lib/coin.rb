class Fixnum
 define_method(:coin) do
   counter = self
   until counter .==(0)
     if counter >= 25
       number_q = counter / 25
        counter = counter % 25
     elsif counter >= 10
       number_d = counter / 10
       counter = counter % 10
     elsif counter >= 5
       number_n = counter / 5
       counter = counter % 5
     elsif counter <= 4
       number_p = counter / 1
       counter = counter % counter
     else
     end
   end
  number_q.to_s() + " quarter, " + (number_d.to_s() + " dime, ") + (number_n.to_s() + "nickel, ") + (number_p.to_s() + " penny")
 end
end
