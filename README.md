# RSpec-and-Ruby

I'm putting together a repo for a friend so she can have a go at teaching herself Ruby and RSpec.
I'm using material from two repos - [alexch's learn_ruby](https://github.com/alexch/learn_ruby) and [ultrasaurus' test-first-teaching](https://github.com/ultrasaurus/test-first-teaching).

This tool is aimed at people who already know some Ruby and want to know more
about RSpec and TDD. 

To get started you need to have git installed on your command line.

Check if it is there by typing (into the terminal)
```
git --version
```
in your terminal after the $

If not, install it by typing

```
brew install git
```

no brew? You'll need to install that too. I did it [from this site](https://brew.sh/) and I don't a hundred
percent know what the command I copied and pasted does, but people I trust told me it was okay.

you'll also need to get [started with Docker](https://docs.docker.com/docker-for-mac/) and put Docker Compose
 on your computer. If you didn't have Docker, you probably won't have Docker Compose, but you can check in
 the same way

 ```
docker-compose --version
```

```
brew install docker-compose
```

After that, you need to clone the git repo onto your computer.

```
git clone https://github.com/colquhounking/RSpec-and-Ruby
```

Then go in to the directory you just made

```
cd Rspec-and-Ruby
```

and run

```
./auto/dev
```

in your command line. This puts you inside the docker container(?). It will down load a whole lot of
things that you'll only have to download the first time. If you were to exit and run the command again,
 it would be much faster


Now go to [the first lot of instructions](./instructions/00_hello_instructions.md) to start the exercises.
