require_relative "spec_helper.rb" # this lets us run tests
require_relative "../Board.rb"
require_relative "../Player.rb"

describe Board do
  
  it "should create initialize an empty 9 spot Array" do
    b = Board.new
    expect(b.board).to eql(Array.new(9, "-"))
  end
  
  it "should add a mark to a chosen index in the Array" do
    b = Board.new
    expect(b.board)
  end
    
  it "should check for a winning game and return true or false" do
    it pending
  end
 
  it "should check for a tie game and return true or false" do
    it pending
  end
  
  it "should check if the board is full and return true or false" do
    it pending
  end
  
  it "should check if an Array index is already filled and return true or false" do
    it pending
  end
end  
  