require("rspec")
require("sinatra")
require("./lib/coin.rb")

describe("the uses will input a random amout of change and we will tell you in quarters, dimes, nickels, and pennies") do
  it ("will have an output of a penny if the user enters '4' cents ") do
    expect(4.coin()).to(eq({"qaurters"=>0, "dimes"=>0, "nickels"=>0, "pennies"=>4}))
  end
  it ("will have an output of a nickel if the user enters '5' cents ") do
    expect(5.coin()).to(eq({"qaurters"=>0, "dimes"=>0, "nickels"=>1, "pennies"=>0}))
  end
  it ("will have an output of a dime if the user enters '10' cents ") do
    expect(10.coin()).to(eq({"qaurters"=>0, "dimes"=>1, "nickels"=>0, "pennies"=>0}))
  end
  it ("will have an output of a quarter if the user enters '25' cents ") do
    expect(25.coin()).to(eq({"qaurters"=>1, "dimes"=>0, "nickels"=>0, "pennies"=>0}))
  end
end
