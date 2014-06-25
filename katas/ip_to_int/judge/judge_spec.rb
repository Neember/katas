Dir.glob("#{__dir__}/../code/*", &method(:require))

describe '#ip_to_int32' do
  [
    ["128.114.17.104", 2154959208],
    ["0.0.0.0", 0],
    ["128.32.10.1", 2149583361 ]
  ].each do |ip, number|
    it "return #{number} for #{ip}" do
      ip_to_int32(ip).should == number
    end
  end
end
