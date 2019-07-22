## Hello

The way I was taught to do Test Driven Development was to run the test first and let it fail,
then write the code that will make it pass. This even includes making the file the code will go in.

If you have run ./auto/dev you'll be 'inside' the docker (image?).

Type

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

Your first step is make the file '00_hello.rb' in the 'lib' directory.

Once you have done that run

```
rspec
```

The error should change!
