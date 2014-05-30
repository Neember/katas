Dir.glob("#{__dir__}/../code/*", &method(:require))

describe '#fizzbuzz' do
  before { @result = fizzbuzz }

  it 'returns an array starting from 1' do
    @result.first.should == 1
  end
  
  it 'returns an array that contains 100 elements' do
    @result.size.should == 100
  end

  (1..100).select { |n| n % 3 == 0 && n % 5 > 0 }.each do |number|
    it "return Fizz for #{number}" do
      @result[number-1].should == 'Fizz'
    end
  end

  (1..100).select { |n| n % 5 == 0 && n % 3 > 0 }.each do |number|
    it "return Fizz for #{number}" do
      @result[number-1].should == 'Buzz'
    end
  end


  (1..100).select { |n| n % 15 == 0 }.each do |number|
    it "return Fizz for #{number}" do
      @result[number-1].should == 'FizzBuzz'
    end
  end
end
