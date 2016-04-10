require 'fizzbuzz'

array = *(1..100)

describe 'fizzbuzz' do
array.select do |number|
    if number % 3 == 0 && number % 5 == 0
      it "it returns 'fizzbuzz' when multiples of 3 and 5" do
        expect(fizzbuzz(number)).to eq "fizzbuzz"
      end
    elsif number % 5 == 0
      it "it returns 'buzz' when multiples of 5" do
        expect(fizzbuzz(number)).to eq "buzz"
      end
    elsif number % 3 == 0
        it "it returns 'fizz' when multiples of 3" do
          expect(fizzbuzz(number)).to eq "fizz"
        end
    else
      it "it returns the number when not a multiple of 3 or 5" do
        expect(fizzbuzz(number)).to eq number
      end
    end
  end
end
