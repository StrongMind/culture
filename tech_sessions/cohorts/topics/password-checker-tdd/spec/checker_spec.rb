require 'checker'

RSpec.describe 'Checker' do
  before(:each) do
    @sut = Checker.new
  end

  context "User Passwords" do
    it "should reject passwords that are less than 7 characters" do
      expect(@sut.check("abc")).to be false
    end
  end
end