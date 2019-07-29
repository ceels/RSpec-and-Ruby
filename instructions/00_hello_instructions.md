## Hello

The way I was taught to do Test Driven Development was to run the test first and let it fail,
then write the code that will make it pass. This even includes making the file the code will go in.

If you have run ./auto/dev you'll be 'inside' the docker (image?).

After the 'app#' type

```
rspec
```

You should get an error that is similar to:

```
An error occurred while loading ./spec/00_hello_spec.rb.
Failure/Error: require '00_hello'

LoadError:
  cannot load such file -- 00_hello
# ./spec/00_hello_spec.rb:13:in `require'
# ./spec/00_hello_spec.rb:13:in `<top (required)>'
No examples found.



Finished in 0.00041 seconds (files took 0.12848 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples
```

It 'cannot load such file' because it doesn't exist yet. Your first step is to
make the file '00_hello.rb' in the 'lib' directory. Probably at this stage, the easiest thing
to do is to open the repo you downloaded in an editor. You will need something like
[Sublime](https://www.sublimetext.com/3) or [Atom](https://atom.io/).

When you have created the new file run

```
rspec
```

The error should change!

```
Failures:

  1) Hello the hello function says hello
     Failure/Error: expect(hello).to eq('Hello!')

     NameError:
       undefined local variable or method `hello' for #<RSpec::ExampleGroups::Hello::TheHelloFunction:0x0000556bc9bd6200>
     # ./spec/00_hello_spec.rb:15:in `block (3 levels) in <top (required)>'

Finished in 0.00143 seconds (files took 0.09722 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/00_hello_spec.rb:14 # Hello the hello function says hello
```

It is worth taking time to look at the differences between the errors. But the main
thing do focus on here is that you have 'undefined local variable or method 'hello'',
so the next step is to define (def?) 'hello'.

First, open up [00_hello_spec](./RSpec-and-Ruby/spec/00_hello_spec.rb) this file has the RSpec tests
and has some instructions at the top that may help.

Once you have done that go to the file you just created in lib '00_hello.rb' and
define 'hello'. If youneed a hint on how to do this try [this site](http://ruby-for-beginners.rubymonstas.org/writing_methods/definition.html),
or googling how to define something in Ruby.

You'll know if you've been successful if the error changes!

```
Failures:

  1) Hello the greet function says hello to someone
     Failure/Error: expect(greet('Alice')).to eq('Hello, Alice!')

     NoMethodError:
       undefined method `greet' for #<RSpec::ExampleGroups::Hello::TheGreetFunction:0x00005593a271eae0>
     # ./spec/00_hello_spec.rb:21:in `block (3 levels) in <top (required)>'

Finished in 0.0031 seconds (files took 0.12484 seconds to load)
2 examples, 1 failure

Failed examples:

rspec ./spec/00_hello_spec.rb:20 # Hello the greet function says hello to someone

```
If you're not sure what to do next. Try working through this [Ruby Monk exercise](https://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson).
