require("rspec")
require("sinatra")
require("./lib/coin.rb")

describe("the uses will input a random amout of change and we will tell you in quaters, dimes, nickels, and pennies") do
  it "will have an output of a quater if the user enters '25' cents" do
    expect(25.coin()).to(eq("1 quater"))
  end
end
