# README

This is a series of Ruby Katas used for practicing Ruby.

## Why do katas?

Normally a coder don't have time to practise coding or learning a new technique in coding. 
We are just buried with delivering codes in impossible date lines.
However, we do need to improve our skills in coding - either for passion in our trade or to be more productive (so that we have a closer chance to meet that impossible date line).

Katas are coding problems for you to solve. Through solving code katas, you will learn more about your art and your tools.

## Using the kata

Each kata is grouped in their own folder under `katas`:

```
katas
  |_ kata_1
      |_ instructions.md
      |_ rakefile.rb
      |_ code
        |_ answer.rb
      |_ judge
        |_ judge_spec.rb
  |_ kata_2
      |_ instructions.md
      |_ rakefile.rb
      |_ code
        |_ answer.rb
      |_ judge
        |_ judge_spec.rb
```

`instructions.md` is the kata and you can solve the kata in the `code/answer.rb` file.

When you have a solution to the kata, you can run `rake judge` in the kata folder to see if your solution passed or not.

More information on the judging can be found in the instructions of each kata.

Finally, solutions can be found in the `/solutions` folder.

However, we highly discourage you from seeing the solutions except when you finished yours.

## How to start?

Clone the project in your own computer. eg `git clone https://github.com/Neember/katas`

Go to `<fork_project_dir>/katas/` and go to the kata directory which you want to try!

## Ways to approach the katas

> "It is not the destination, but the journey that matters." - Buddha

Solving a kata is the destination but it is not what you should be seeking.
It is the process of solving the kata that gives you the most learning.

Things that you can learn when you are solving the kata:
- Can you try a new way of coding instead of using your "comfortable" method? eg. use classes instead of just methods
- Done something new? Try the kata again to practise it. You will learn more about ideas about your new discovery.
- Add a constraint to the kata to force you to do it differently. (List of coding constraints: http://coderetreat.org/facilitating/activity-catalog)
- Anything that can help you to learn new things.

## Rules

Here's some basic rules that you should follow:
- No searching for the answers (the whole practice will be pointless)
- Take your time... really! It's about trying new things and learn. Rushing will defeat the whole process.
- Don't focus on delivering the code, focus on trying new codings
- Don't do things that you already know (at least not all of them)

## Adding Katas

You can add more katas!

From the project root, run `rake new KATA=<NewKataName>`,

This will create a new directory (like above) named after your kata name in the katas directory.

Thereafter, just edit the `instructions.md` in your kata folder and to add the judging in `/katas/<new_kata_name>/judge/judge_spec.rb` and you should all set.

## Contributing Katas

We welcome contributors to add more katas or to improve this project.

Here's how to contribute:

- Fork the project
- Add your own kata
- Send a pull request

## Final word

Enjoy!
