require 'checker'

RSpec.describe 'Checker' do
  describe '#valid?' do
    let(:sut) { Checker.new }
    context "when the user password is valid" do

      it "should have more than 6 characters" do
        password = Faker::Internet.password(max_length: 6)
        expect(sut.check(password)).to be false
      end

      it 'contains at least 1 number' do
        expect(@sut.check(@password)).to be true
      end
    end

    context 'Invalid User Password' do
      before(:each) do
        @password = ''
      end

      it 'rejects passwords with no letters' do
        expect(@sut.check(@password)).to be false
      end
    end
  end
end