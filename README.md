# About aspCalculator

- Open and free for all hopeless electrical engineering students.

During semester, I will put here an suite of methods for calculate, in MATLAB, parameters of my subject Analysis of Power Systems (Análise de Sistemas de Potência). For years, the students had fear, but, now this will change. 

The general idea is give an suite of functions that can be combinated for simulate the workflow of the subject. 

aspCalculator **IS NOT** an resource to give for ready answers for specifc questions.

Using aspCalculator you will can think how you can get the correct answer for the question using the manipulation of the available functions. 

In this README, I promise to ever update with the documentation of the new implemented methods.  

by: Marcus Cavalcante and José Arnaldo. 


# Documentation

Here, you can see all the implemented methods and how use them. 
The documentation was writed in english, but the methods are named in portuguese.

## Implemented Methods.

In suite, you can find methods of:

- Conversion: Change numbers between units or forms. 
- Full calculation: Calculate anything. 

**IMPORTANT: IS NOT NECESSARY TO USE THE IMAGINARY NUMBER I (OR J). JUST PASS, LIKE A PATTERN, COMPLEXY NUMBERS IN A VECTOR LIKE THE EXAMPLE**

                                   `ImpedanceInput = [realPart, imaginaryPart]`

#### Conversion methods.

#### 1. calculePolar(real, img). Convert a number in the rectangular for to polar form. 
  - parameters:
  real: real part of a complex number;
   img: imaginary part of a complex number (without i or j);
   
  - return:
  result: an vector with 2 numbers. The first one is the module and the second is the phase(in degrees) of the polar number.
 `polarNumber = [module, phase]`
  
#### 2. calculeRetangular(module, phase)
   - parameters:
   module: module of a polar number;
   phase: phase(in degrees) of the polar number;
   
  - return:
  result: an vector with 2 numbers. The first one is the real part and the second is the imaginary part of the rectangular number.
`rectangularNumber = [real, imaginary]`

#### 3. calculeAdmitancia(module, phase).
   - parameters:
   module: module of a impedance in polar;
   phase: phase(in degrees) of the impedance;
   
  - return:
  result: an vector with 2 numbers. The module of admitance and the phase.
`admitance = [module, phase]`


#### Calculation Mmethods.

#### 1. emSerie(retangularNumber1, retangularNumber2).
   - parameters:
   retangularNumber1: an vector containing real and imaginary part of number;
   retangularNumber2: an vector containing real and imaginary part of number;
   
  - return:
  result: an vector with 2 numbers. The sum of the real and imaginary parts.
`rectangularNumberResultant = [real, imaginary]`

