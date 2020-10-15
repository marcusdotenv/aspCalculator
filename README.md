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

**IMPORTANT: IS NOT NECESSARY TO USE THE IMAGINARY NUMBER I (OR J). JUST PASS, LIKE A PATTERN, COMPLEXY NUMBERS IN A VECTOR LIKE EXAMPLE**

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

#### 4. calculeReatancia(selectFlag, valueToConvert, frequency).
  - parameters:
  selectFlag: this flag choose if you wanna calculate a Capacite or an Indutive reatancy. Use **"ind"** or **"cap"**.
  valueToConvert: value of Capacitance (in Farads) or Indutance (in Henrys). Hint: try to every use the cientific notation. For exemple, 100mH can be "100E-3". Or 20uF can be "20E-6".
  frequency: value in Hertz to the source. 

  - return:
  result: an value of reatancy corresponding the inputs. 
  **IMPORTANT:** Remember, the capacitive reatancy has an negative value. 

#### 5. opereRetangular(selectFlag, retangularNumber1, retangularNumber2).
  - parameters:
  selectFlag: choose if you wanna add or subtract the rectangular numbers. Use **"sum"** or **""sub""**.
  rectangularNumber1: an vector with real and imaginary parts of a number. Like:
  
  `retangularNumber1 = [realPart1, imaginaryPart1]`.
  rectangularNumber2: an vector with real and imaginary parts of a number. Like:
  
  `retangularNumber2 = [realPart2, imaginaryPart2]`.

  - return:
  result: the sum or subtract of the numbers. 

#### 6. operePolar(selectFlag, polarNumber1, polarNumber2).
  - parameters:
  selectFlag: choose if you wanna multiply or divide the rectangular numbers. Use **"mult"** or **""div""**.
  rectangularNumber1: an vector with module and phase parts of a number. Like `polarNumber1 = [module, phase]`.
  rectangularNumber2: an vector with module and phase parts of a number. Like `polarNumber2 = [module, phase]`.

  - return:
  result: the sum or subtract of the numbers. 

#### 7. calculeConjulgado(polarNumber)
  - parameters:
  polarNumber: an polar number.

  - return:
  result: Return an array of 2 positions, same module, inverted phase. 

####  Calculation Methods.

#### 1.calculeImpedanciaEstrela(impedanceRectangular).
  - parameters:
  impedanceRectangular: impedance(in rectangular form) of an triangule load. 
  
  - return:
  result: The new impedance of the conversion. 
  **Hint:** use this function just one time if the three load impedances are the same. But, if you have three differents load impedances, use this function for each one. 

#### 2.calculePotenciaTrifasica(monofasicPower).
  - parameters:
  impedanceRectangular: calculated power(in polar form) using the monophasic model. 
  
  - return:
  result: return an array with 3 positions. 
  `triphasePower = [apparentPower, activePower, reativePower]`

  #### 3.calcularTensoes(selectFlagSequency, voltage, phaseAB).
  - parameters:
  selectFlagSequency: indicates the sequency of phases. Use strings **"abc"** or **"acb"**.
  voltage: the biggest voltage value in the question.
  phaseAB: an possible shift phase of the question.
  
  - return:
  result: an array of 6 positions containing: 
  `voltage = [vanModule vanPhase vbnModule vbnPhase vcnModule vcnPhase]`

  


