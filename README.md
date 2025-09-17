# week3-discrete-signals-matlab

This project contains MATLAB code (`discrete_signals.m`) for plotting and analyzing discrete-time signals.

## Signals Included
1. **Unit Impulse (δ[n])** – A signal that is 1 at n=0 and 0 otherwise.  
2. **Unit Step (u[n])** – A signal that is 0 for n<0 and 1 for n≥0.  
3. **Exponential Signal** – Discrete exponential growth/decay.  
4. **Sinusoidal Signal** – Discrete sine wave.

## Signals Included
1. **Unit Impulse (δ[n])**  
   - Equal to 1 at n=0, 0 elsewhere.
2. **Unit Step (u[n])**  
   - 0 for n < 0, 1 for n ≥ 0.
3. **Unit Ramp (r[n])**  
   - n for n ≥ 0, 0 otherwise.
4. **Exponential Signal**  
   - a^n for n ≥ 0, with a decay/growth factor `a`.
5. **Signum Function (sgn[n])**  
   - -1 for n < 0, 0 for n = 0, +1 for n > 0.
6. **Sinc Function**  
   - `sinc(n/α) = sin(πn/α) / (πn/α)`, with sinc(0)=1.  
   - Discrete version shows oscillations around n=0.

## Sample Plots
### Figure 1
![Figure 1](figure1.png)

### Figure 2
![Figure 2](figure2.png)

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/averagekidjedidiah/week3-discrete-signals-matlab.git
