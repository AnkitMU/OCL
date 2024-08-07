# SMT Solvers: Z3 and CVC5

## Introduction
This repository provides instructions for installing and using three popular SMT (Satisfiability Modulo Theories) solvers: Z3, CVC5 and Ostrich. These solvers can be used for verification, constraint solving, and other computational logic tasks.

## Z3 SMT Solver

### Installation
To install Z3, follow these steps:

1. Visit the official [Z3 GitHub repository](https://github.com/Z3Prover/z3).
2. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/Z3Prover/z3.git
   cd z3
   
## Usage
Once Z3 is installed, you can use it via the command line or through its APIs in various programming languages such as Python, Java, C++, and .NET.

Command Line
To use Z3 from the command line, navigate to the build directory in your Z3 installation and run the z3 executable. You can provide input files containing SMT-LIB or Z3-specific scripts as arguments.

3. Example:
   ```sh
    ./path/to/z3/build/z3 input.smt2
4. Check Statistics:
    ```sh
   ./path/to/z3/build/z3 input.smt2 -st

# CVC5 SMT Solver

## Introduction
This repository provides instructions for installing and using the CVC5 SMT (Satisfiability Modulo Theories) solver. CVC5 can be used for formal verification, constraint solving, and other computational logic tasks.

## Installation
To install CVC5, follow these steps:

1. Visit the official [CVC5 GitHub repository](https://github.com/CVC5/CVC5).
2. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/CVC5/CVC5.git
   cd CVC5


## Usage

Once CVC5 is installed, you can use it via the command line or through its APIs in various programming languages such as C++, Python, and Java.

3. Example:
   ```sh
    ./path/to/cvc5/cvc5 input.smt2

4. Check Statistics:
   ```sh
    ./path/to/cvc5/cvc5 input.smt2 --stats

# Ostrich SMT Solver

## Introduction
This repository provides instructions for installing and using the Ostrich SMT (Satisfiability Modulo Theories) solver. Ostrich can be used for formal verification, constraint solving, and other computational logic tasks.

## Installation
To install Ostrich, follow these steps:

1. Visit the official [Ostrich GitHub repository](https://github.com/uuverifiers/ostrich).
2. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/uuverifiers/ostrich.git
3. Navigate to the Ostrich directory:
   ```sh
     cd ostrich

4. Build the project using sbt (Scala Build Tool):
    ```sh
      sbt assembly

## Usage
Once Ostrich is installed, you can use it via the command line. You can provide input files containing SMT-LIB scripts as arguments.

5. Command Line
To use Ostrich from the command line, navigate to the directory containing the Ostrich JAR file and run the java command with the JAR file and input file as arguments.
    ```sh
       java -jar target/scala-2.12/ostrich-assembly-0.1.jar input.smt2
6. Check Statistics:
   ```sh
     java -jar target/scala-2.12/ostrich-assembly-0.1.jar input.smt2 -logging=stats




