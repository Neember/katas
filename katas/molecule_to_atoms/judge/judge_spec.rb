Dir.glob("#{__dir__}/../code/*", &method(:require))

describe '#molecule_to_atoms' do
  [
    [ 'OH', {O:1, H:1} ],
    [ 'NaCl', {Na: 1, Cl: 1} ],
    [ 'H2O', {O: 1, H: 2} ],
    [ 'Na2Cl3O', {Na: 2, Cl: 3, O: 1} ],
    [ 'Mg(OH2)2', {Mg: 1, O: 2, H:4} ],
    [ 'K4[ON(SO3)2]2', {K: 4, O: 14, N: 2, S: 4} ],
    [ 'Ra4{Fe4[Su2(OH)5]3}2', {O: 30, H: 30, Su: 12, Fe: 8, Ra: 4} ]
  ].each do |molecule, answer|
    it "returns #{answer.to_s} for #{molecule}" do
      molecule_to_atoms(molecule).should == answer
    end
  end
end
