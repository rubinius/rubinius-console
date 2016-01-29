# The Rubinius Console

The Rubinius console is a command line interface to the Rubinius language platform. It combines common REPL features, like those found in IRB or Pry, with commands to inspect a running system typical of a debugger. It also supports interactive program development with edit-and-continue when exceptions occur.


## Code of Conduct

Participation in this project is governed by the Rubinius [Code of Conduct](http://rubinius.com/code-of-conduct/).


## Installation

Rubinius console is pre-installed in Rubinius. It uses platform features specific to Rubinius.


## Features

The Rubinius console uses a number of high-level concepts. We will describe these in detail before looking at individual commands.

1. **Process:** An operating system instance of the Rubinius process. By default, the Rubinius console runs in the process you are interacting with. However, it can also attach to multiple external Rubinius processes running locally or on another computer.
1. **Command line editor:** This enables entering a line of code or commands at the console and recalling them from history to edit or re-execute. This feature is generally provided by an interface to the systems Readline library.
1. **Source code:** The program text that you edit and that the Rubinius process runs. Rather than just a collection of text that exists in the program file, this is an interface to the text that provides features like different representations of the text. For example, the text has a parsed representation as an abstract syntax tree (AST), or a compiled representation as bytecode instructions for the virtual machine, or pre-processed for the just-in-time (JIT) compiler as LLVM IR.
1. **Location:** A location is a place to interact with the running process. It may be a location in the source code. For example, at Module#constants method. Or it may be at an event. For example, when the Array class is modified.
1. **Command:** A command is the basic unit of instruction in the Rubinius console. It is the mechanism for interacting with the running process. Much like commands in a typical operating system shell, commands in the console take options and input. Commands may be repeatable and may set up a chain of commands where the system transitions from one command to the next during while interacting with you. For example, when stepping through a program using a typical debugger, you may want to repeat the 'next' command several times in succession. In the Rubinius console, the 'next' command sets itself as the following command. Pressing <Enter> invokes the command. Entering a different command cancels the pending 'next' command.
1. **Mode:**
1. **View:**


### Basic Usage

When invoked without command line arguments, the Rubinius process will start the Rubinius console after initializing the system.

The default mode is the read-eval-print-loop (REPL) that IRB provides. You enter a line of code, Rubinius runs it, then prints the results. However, all the features of the console are always available. You can specify an alternate default mode when starting up, when attaching to a process, or when an exception occurs by editing the .rbx-console-rc file in your HOME directory.


## License

This project uses MPL-2.0. See the LICENSE file for details.
