# RLC-State-Space-Modeling-MATLAB
# State-Space Modeling of a Series RLC Circuit

This repository provides the complete state-space mathematical modeling, transfer function verification, and MATLAB simulation for a continuous-time series RLC network.

---

## Authors & Acknowledgments

* **Smit Patil**, **Akanksha Patra**, and **Mishti Nehete**[cite: 4]  
  Department of Electronics and Telecommunication Engineering, Sardar Patel Institute of Technology, Mumbai[cite: 4]
* **Faculty Mentors:** Prof. Najib Ghatte and Dr. Payal Shah[cite: 4]

---

## Overview

Traditional circuit analysis typically relates input and output via single higher-order differential equations or Laplace-domain transfer functions[cite: 4]. This project implements a **state-space representation**, organizing system dynamics into a coupled set of first-order vector-matrix differential equations:

$$\dot{\mathbf{x}}(t) = \mathbf{A}\mathbf{x}(t) + \mathbf{B}u(t)$$
$$y(t) = \mathbf{C}\mathbf{x}(t) + \mathbf{D}u(t)$$[cite: 4]

The state variables are chosen as the physically independent energy-storage quantities[cite: 4]:
* $x_1(t) = i_L(t)$ (inductor current, storing magnetic energy)[cite: 4]
* $x_2(t) = v_C(t)$ (capacitor voltage, storing electric energy)[cite: 4]

---

## Circuit Parameters & State Matrices

The circuit is analyzed under the following nominal component values[cite: 4]:

| Parameter | Symbol | Value | Unit |
| :--- | :---: | :---: | :---: |
| Resistance | $R$ | 10 | $\Omega$[cite: 4] |
| Inductance | $L$ | 0.1 | $\text{H}$[cite: 4] |
| Capacitance | $C$ | 100 | $\mu\text{F}$[cite: 4] |
| Input Excitation | $v_{\text{in}}(t)$ | 1.0 (Unit Step) | $\text{V}$[cite: 4] |

### Continuous-Time Matrices

$$\mathbf{A} = \begin{bmatrix} -\frac{R}{L} & -\frac{1}{L} \\ \frac{1}{C} & 0 \end{bmatrix} = \begin{bmatrix} -100 & -10 \\ 10000 & 0 \end{bmatrix}$$[cite: 4]

$$\mathbf{B} = \begin{bmatrix} \frac{1}{L} \\ 0 \end{bmatrix} = \begin{bmatrix} 10 \\ 0 \end{bmatrix}, \quad \mathbf{C} = \begin{bmatrix} 0 & 1 \end{bmatrix}, \quad \mathbf{D} = [0]$$[cite: 4]

---

## Dynamic Characteristics

* **Natural Frequency ($\omega_n$):** $316.23\text{ rad/s}$ ($50.33\text{ Hz}$)[cite: 4]
* **Damping Ratio ($\zeta$):** $0.1581$ (underdamped, $0 < \zeta < 1$)[cite: 4]
* **Damped Frequency ($\omega_d$):** $312.25\text{ rad/s}$[cite: 4]
* **Eigenvalues of $\mathbf{A}$:** $\lambda_{1,2} = -50 \pm j312.25\text{ s}^{-1}$ (asymptotically stable focus)[cite: 4]
* **Transient Metrics:** Peak Overshoot $M_p \approx 60.47\%$, 2% Settling Time $T_s \approx 0.080\text{ s}$[cite: 4]

---

## Repository Contents

* `rlc_state_space.m`: MATLAB script simulating step response, state trajectories ($i_L, v_C$), phase-plane portrait, and eigenvalue calculation[cite: 4].
* `figures/`: High-resolution simulation waveforms and phase portraits.
* `paper/`: Complete technical documentation and IEEE-formatted paper[cite: 4].

---

## How to Run

1. Clone or download this repository:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/RLC-State-Space-Modeling-MATLAB.git](https://github.com/YOUR_USERNAME/RLC-State-Space-Modeling-MATLAB.git)
