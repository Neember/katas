def molecule_to_atoms(molecule)
  atoms = {}

  molecule.scan(/([\(\[\{].+[\)\]\}])(\d*)/).each do |sub_molecule, sub_molecule_count|
    molecule.gsub!(sub_molecule + sub_molecule_count, '')
    sub_molecule_count ||= 1
    sub_counting = molecule_to_atoms(sub_molecule[1..-2])
    sub_counting = sub_counting.each { |key, value| sub_counting[key] = value * sub_molecule_count.to_i }
    atoms = merge_atom_counts(atoms, sub_counting)
  end

  merge_atom_counts(atoms, count_atoms(molecule))
end

def merge_atom_counts(new_hash, old_hash)
  new_hash.merge(old_hash) { |key, oldval, newval| oldval + newval }
end

def count_atoms(simple_molecule)
  atoms = {}

  simple_molecule.scan(/([A-Z]{1}[a-z]*)(\d)*/).each do |atom, count|
    count ||= 1
    atoms[atom.to_sym] = count.to_i
  end

  atoms
end
