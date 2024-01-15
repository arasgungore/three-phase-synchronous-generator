# three-phase-synchronous-generator

A MATLAB project which analyzes a 13.8 kV, 50 MVA, 0.9–power–factor–lagging, 60 Hz, four-pole Y–connected three-phase stand-alone synchronous generator.

This project was assigned for the Energy Conversion (EE 304) course in the Spring 2022 semester.



## Run on Terminal

```sh
matlab -nodisplay -nosplash -nodesktop -r "run('main.m');exit;"
```



## Description

A 13.8 kV, 50 MVA, 0.9–power–factor–lagging, 60 Hz, four-pole Y–connected synchronous generator has a synchronous reactance of 2.5 Ω and an armature resistance of 0.2 Ω. At 60 Hz, its friction and windage losses are 1 MW, and its core losses are 1.5 MW. The field circuit has a DC voltage of 120 V, and the maximum field current,
![I_F](https://latex.codecogs.com/svg.image?I_F), is 10 A. The current of the field circuit, ![I_F](https://latex.codecogs.com/svg.image?I_F), is adjustable over the range from 0 to 10 A for which the OCC of this generator is given as:

![equation](https://latex.codecogs.com/svg.image?%5Clarge%20V_%7BT,OpenCircuit%7D(I_F)=20%5C,(1.05-%5Cexp(-0.3%5C,I_F))%5C;kV)

In all of the plots, the phasors need to be in vector shapes, not as simple lines.

1. Create a MATLAB function for plotting the phasor diagram of the generator for different values of the stator current ![I_A](https://latex.codecogs.com/svg.image?I_A), the field current ![I_F](https://latex.codecogs.com/svg.image?I_F), the terminal voltage ![V_T](https://latex.codecogs.com/svg.image?V_T), and the power angle. Explain briefly in your report theoretical calculations and include the code in the appendix of the report.

2. At rated conditions, compute and provide ![|I_A|max](https://latex.codecogs.com/svg.image?|I_A|_{max}) and ![|E_A|max](https://latex.codecogs.com/svg.image?|E_A|_{max}). Explain briefly in your report theoretical calculations. For rated conditions plot the phasor diagram and limit circles of the appropriate variables in red. Include the plot in the report.

3. For this part, assume that the terminal voltage remains at the rated values described in the question. Create a new plot that contains the red limit circles. In this new figure, using different colors, the plot for 0.9–power–factor–lagging and 0.9–power–factor–leading ![E_A](https://latex.codecogs.com/svg.image?E_A) limit circles corresponding to ![I_F](https://latex.codecogs.com/svg.image?I_F) = 2 A and ![I_F](https://latex.codecogs.com/svg.image?I_F) = 6 A as well as the phasors of relevant quantities.

4. For each case when varying power factors and ![I_F](https://latex.codecogs.com/svg.image?I_F) provide in the report a short analysis of generator behavior in terms of active and reactive power by observing the plots you created.



## Plots

### Phasor Diagram

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/three-phase-sync-generator/main/Plots/1.png" width="800">
</p>

### Lagging/Leading Power Factor (PF)

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/three-phase-sync-generator/main/Plots/2.png" width="800">
</p>



## Author

👤 **Aras Güngöre**

* LinkedIn: [@arasgungore](https://www.linkedin.com/in/arasgungore)
* GitHub: [@arasgungore](https://github.com/arasgungore)
