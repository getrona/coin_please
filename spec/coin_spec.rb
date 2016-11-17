require("rspec")
require("sinatra")
require("./lib/coin.rb")

describe("the uses will input a random amout of change and we will tell you in quarters, dimes, nickels, and pennies") do
  it ("will have an output of a penny if the user enters '4' cents ") do
    expect(4.coin()).to(eq(" quarter,  dime, nickel, 4 penny"))
  end

  # it "will have an output of a quarter if the user enters '25' cents" do
  #   expect(4.coin()).to(eq("1 quarter, dime,0 nicn"))
  # end
  # it "will have an output of a dime if the user enters '10' cents" do
  #   expect(10.coin()).to(eq("1 dime"))
  # end
end
