# Building in Layers

We want to build our software in layers. Remember the sentence:

> Do Fun Things with Big Loud Wildebeests

The layers are: 

- Data (do). The modules with the corresponding structs. Put them in `lib/core` or `lib/app_name/core`. 
- Functional Core (fun). A functional core. 
- Tests (things). We run as many tests as possible in the functional core. 
- Boundaries (big). All process machinery, including OTP, is isolated to the boundary, and beyond. 
- Lifecycle (loud). OTP supervisors fit here. 
- Workers (wildebeests). The configuration that lets us split work. 

# Using Elixir to Solve a Nontrivial Problem

In short, this lab is about deisgn, and how to build software in chunks that are easy to deploy in units and build in pieces. We will use the same strategies in the upcoming book by James Gray and Bruce Tate, tentatively called Designing Elixir Systems with OTP. 

## The Sandbox

Rather than have you work with the entire Elixir language, we'll deal with a small portion at a time. Before each exercise, we'll let you see a list of functions you can use to solve the problem. We don't want to solve the problem for you, but we do want you to focus on using Elixir and your tools rather than playing "Where's Waldo" to find the magic function you need to solve an exercise. 

## The Problem

We will give you a single problem, but let you solve it in pieces. You'll start each lab with a working code base and you'll build on that code base to make tests pass, one at a time. 

## Turning Red Ligths Green

Our labs are test-driven. You will activate one test at a time, and run tests to make sure your program does what it should. This is a good way to learn, and it's a small step from learning to code in this way to writing your own tests and solving business problems. 

# Why do conference trainings?

At Groxio, we beleive in helping build new Elixir developers. If you have additional training needs, let your instructor know!

