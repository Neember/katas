# Instruction
For a given chemical formula represented by a string, count the number of atoms of each element contained in the molecule and return an object.

You are to write a method named 'molecule_to_atoms' which will take in a string parameter (no spaces in the string).

For example:

```
molecule_to_atoms('H2O') # => {H: 2, O: 1}
molecule_to_atoms('Mg(OH)2') # => {Mg: 1, O: 2, H: 2}
molecule_to_atoms()'K4[ON(SO3)2]2') # => {K: 4, O: 14, N: 2, S: 4}
```

As you can see, some formulas have brackets in them. The index outside the brackets tells you that you have to multiply count of each atom inside the bracket on this index. For example, in Fe(NO3)2 you have one iron atom, two nitrogen atoms and six oxygen atoms.

Note that brackets may be round, square or curly and can also be nested. Index after the braces is optional. There is only one top level brackets per molecule. Eg. you will not see a double brackets like this N2(CH4)2(NO2)3

# Judging Instruction

Specified instructions for the code.

For example:

To judge if your script is working properly, you will create a function
named `molecule_to_atoms` which will receive a single string parameter (non-empty and no spaces).

```ruby
molecule_to_atoms('H2O') # => {H: 2, O: 1}
molecule_to_atoms('Mg(OH)2') # => {Mg: 1, O: 2, H: 2}
molecule_to_atoms()'K4[ON(SO3)2]2') # => {K: 4, O: 14, N: 2, S: 4}
```

# How to judge your kata?

After you have completed your kata, you can test if your kata works correctly by running
`rake judge` within your kata directory.
