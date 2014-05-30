Dir.glob("#{__dir__}/../code/*", &method(:require))

describe '#arabic_to_roman' do
  it 'returns empty string if 0' do
    arabic_to_roman(0).should == ''
  end

  [
    [1, 'I'],
    [2, 'II'],
    [3, 'III'],
    [4, 'IV'],
    [5, 'V'],
    [6, 'VI'],
    [7, 'VII'],
    [8, 'VIII'],
    [9, 'IX'],
    [10, 'X'],
    [11, 'XI'],
    [12, 'XII'],
    [15, 'XV'],
    [17, 'XVII'],
    [40, 'XL'],
    [60, 'LX'],
    [90, 'XC'],
    [110, 'CX'],
    [154, 'CLIV'],
    [400, 'CD'],
    [700, 'DCC'],
    [900, 'CM'],
    [1100, 'MC'],
    [3458, 'MMMCDLVIII']
  ].each do |arabic, roman|
    it "returns #{roman} for #{arabic}" do
      arabic_to_roman(arabic).should == roman
    end
  end
end
