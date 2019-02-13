# Lab Flow

1. Clone the lab at https://github.com/groxio-learning/mastermind_one_day/tree/master/lab1/mastermind

  cd your/directory/name/lab1
  git clone https://github.com/groxio-learning/mastermind_one_day/tree/master/lab1/mastermind

2. cd mastermind
3. run mix deps.get
4. run mix test

Your job is to make all of the tests pass in test/game_test.exs. One by one, move the @tag :skip tags from each test. Run the tests, and make the changes in the code to make the test pass. 


# Mastermind

In this lab, we're going to build a version of the [Master Mind](http://www.webgamesonline.com/mastermind/) game. Here are the rules: 

- Each board has a hidden answer and a list of guesses
- The answer will have a list of 4 pegs, all different numbers from 1-6
- A player gets 10 turns
- On each turn, a player guesses what the secret code is
- After each turn, the computer "scores" each guess
- The computer scores 1 red peg for each correct number in the correct position
- The computer scores 1 white peg for each correct peg in the wrong position
- The player wins when they guess all pegs correctly
- The computer wins if the player guesses 10 times without a correct answer

# Your Universe

This is what you need to know about Elixir to finish this lab. 

## Structs

An *atom* is a 

A *map* is a data structure that has keys and values. You'll specify a map like this: 

```Elixir
%{ name: "Bruce" }
```

A *struct* is a map that only allows specific keys. To define a struct, first define a module and then define your struct within it. The struct will take on the name of your module. 

For example, to define a struct named `person` that allows `name` and `age` keys, do this: 

```Elixir
defmodule Person do
  defstruct [:name, :age]
end
```

Then you can use the struct like this: 

```Elixir
%Person{ name: "Bruce", age: 53 }
```
