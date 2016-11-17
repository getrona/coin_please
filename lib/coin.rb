class Fixnum
 define_method(:coin) do
   numbers = {"qaurters" => 0,"dimes" => 0,"nickels" => 0,"pennies" => 0}
   counter = self
   until counter == 0
     if counter >= 25
       number_q = counter / 25
       numbers["qaurters"] = number_q
        counter -= number_q * 25
     elsif counter >= 10
       number_d = counter / 10
       numbers["dimes"] = number_d
        counter -= number_d * 10
     elsif counter >= 5
       number_n = counter / 5
       numbers["nickels"] = number_n
        counter -= number_n * 5
     else
        number_p = counter
       numbers["pennies"] = number_p
        counter -= number_p
     end
   end
   numbers.each {|key, value|
     puts "#{key} : #{value}"
   }
 end
end
