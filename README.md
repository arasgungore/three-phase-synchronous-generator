# three-phase-sync-generator

A Simulink project which analyzes a three-phase stand-alone synchronous generator.



## Description

```
A 13.8kV, 50MVA, 0.9–power–factor–lagging, 60Hz, four pole Y–connected synchronous gen-
erator has a synchronous reactance of 2.5Ω and an armature resistance of 0.2Ω.At 60Hz, its
friction and windage losses are 1MW, and its core losses are 1.5MW. The field circuit has a dc
voltage of 120V, and the maximum field current,IF,is 10A. The current of the field circuit,IF,
is adjustable over the range from 0 to 10A for which the OCC of this generator is given as:
```
```
VT,OpenCircuit(IF) = 20 (1. 05 −exp(− 0. 3 IF))kV.
```
```
In all of the plots, the phasors need to be in vector shapesnotas simple lines (Hint: check the
commandquiver).
```
1. Create a Matlabr function for plotting the phasor diagram of the generator for different
    values of the stator currentIA(Hint: IA is complex valued!), the field currentIF,the
    terminal voltageVTand the power angle (and perhaps the color of the objects in the plot).
    Explain briefly in your report theoretical calculations and include the code in the appendix
    of the report.
2. At rated conditions, compute and provide|IA|maxand|EA|max.Explain briefly in your
    report theoretical calculations. For rated conditions plot the phasor diagram and limit
    circles of the appropriate variables inred. Include the plot in the report.
3. For this part, assume that the terminal voltage remains at the rated values described in the
    question. Create a new plot which contains the red limit circles. On this new figure, using
    different colors, plot for 0.9–power–factor–lagging and 0.9–power–factor–leadingEAlimit
    circles corresponding toIF= 2A andIF= 6A as well as the phasors of relevant quantities.
    Note that the total number of diagrams is four over the same plot excluding the red limit
    diagram.
4. For each case when varying power factor andIF provide in the report a short analysis of
    generator behavior in terms of active and reactive power (Hint: see pg. 215 of the textbook)
    by observing the plots you created.
- Report Format
- The report should have a straightforward and simple cover. The cover’s header should
contain the name of the institution, department, class and semester on top as well as the
student’s name and university ID number and the number of words placed in the middle
of the cover page.
