# The Rubinius Console

The Rubinius console is a command line interface to the Rubinius language
platform. It combines common REPL features found in IRB with commands to
inspect a running system typical of a debugger. It also supports interactive
program development with edit-and-continue when exceptions occur.

## Installation

Rubinius console is pre-installed in Rubinius. It uses platform features
specific to Rubinius.

## Features

The Rubinius console uses a number of high-level concepts. We will describe
these in detail before looking at individual commands.

1. Process: an operating system instance of the Rubinius process. By default,
   the Rubinius console runs in the process you are interacting with. However,
   it can also attach to multiple external Rubinius processes running locally
   or on another computer.
1. Command line editor: this enables entering a line of code or commands at
   the console and recalling them from history to edit or re-execute. This
   feature is generally provided by an interface to the systems Readline
   library.
1. Source code: the program text that you edit and that the Rubinius process
   runs. Rather than just a collection of text that exists in the program
   file, this is an interface to the text that provides features like
   different representations of the text. For example, the text has a parsed
   representation as an abstract syntax tree (AST), or a compiled
   representation as bytecode instructions for the virtual machine, or
   pre-processed for the just-in-time (JIT) compiler as LLVM IR.
1. Location:
1. Command:
1. Mode:
1. Format:

### Basic Usage

When invoked without command line arguments, the Rubinius process will start
the Rubinius console after initializing the system. The default mode is the
read-eval-print-loop (REPL) that IRB provides. You enter a line of code,
Rubinius runs it, then prints the results.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rubinius-console/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
