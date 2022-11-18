require 'checker'
require 'faker'

RSpec.describe 'Checker' do
  describe '#valid?' do
    let(:sut) { Checker.new }

    context "when a user password is valid" do

      it "returns true when containing more than 6 characters" do
        password = Faker::Internet.password(min_length: 7)
        expect(sut.valid?(password)).to be true
      end
    end

    context 'when a user password is invalid' do

      it 'returns false when containing less than 6 characters' do
        password = Faker::Internet.password(min_length: 1, max_length: 6)
        expect(sut.valid?(password)).to be false
      end
    end
  end
end