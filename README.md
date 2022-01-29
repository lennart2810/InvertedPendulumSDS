<div id="top"></div>

<h1 align="center"> Sondergebiete der Simulation <br> Inverted Pendulum </h1>
<div align="center">
  <a href="https://www.w-hs.de/maschinenbau-master-boh/">
    <img src="https://www.w-hs.de/typo3conf/ext/whs/Resources/Public/Images/Pagelayout/w-hs_pagelogo.png" 
    alt="Images" width="350" height="100">
  </a>
</div>
<h4 align="center"> WS21/22 </h4>
<br />

# Equations of motion
<div align="center">
  <a href="https://en.wikipedia.org/wiki/Inverted_pendulum">
    <img src="https://upload.wikimedia.org/wikipedia/commons/0/00/Cart-pendulum.svg" 
    alt="Images" width="200">
  </a>
</div>
<br>
<div align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/MKS/Inverted%20Pendulum%20Legrange.ipynb">
    <img src="https://latex.codecogs.com/svg.latex?\Large&space;(M+m)\ddot{x}-ml\ddot{\theta}\cos(\theta)+ml\dot{\theta}^2sin(\theta)=F-D\dot{x}~," />
  </a>
</div>
<div align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/MKS/Inverted%20Pendulum%20Legrange.ipynb">
    <img src="https://latex.codecogs.com/svg.latex?\Large&space;m\ell(\ell\ddot{\theta}-\ddot{x}\cos(\theta)-gsin(\theta))=-d\dot{\theta}" />
  </a>
</div>
<br />

# Multibody Simulation

## SymPy.Mechanics and PyDy
<div align="center">
  <a href="https://en.wikipedia.org/wiki/Inverted_pendulum">
    <img src="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/MKS/Inverted%20Pendulum%20-%20PyDy.PNG" 
    alt="Images" width="200">
  </a>
</div>


bild von pydy

## Analytical Solution
<p align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/MKS/Inverted%20Pendulum%20Legrange.ipynb">
  <img src="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/MKS/InvertedPendulum.gif" 
  alt="animated"  width="1000" height="295" />
</p> 
<br />
  
# Reinforcement Learning
<p align="center">
  <a href="https://keon.github.io/deep-q-learning/">
  <img src="https://keon.github.io/images/deep-q-learning/animation.gif" 
  alt="animated"  width="420" />
</p>
  
<div align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/RL/Inverted%20Pendulum%20RL%20-%20Train.ipynb">
    <img src="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/RL/images/Training.png" 
    alt="Images" width="840">
  </a>
</div>
<br />


# Physics Informed Neural Networks
  
## NN
<p align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/PINN/InvertedPendulum/Inverse%20Pendulum%20PINN.ipynb">
  <img src="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/PINN/InvertedPendulum/NN_lr_0.001_hidden_3x32_episodes_6000.gif" 
  alt="animated"  width="800" height="320" />
</p> 
  
## PINN Pytorch
<p align="center">
  <a href="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/PINN/InvertedPendulum/Inverse%20Pendulum%20PINN.ipynb">
  <img src="https://github.com/lennart2810/InvertedPendulumSDS/blob/master/PINN/InvertedPendulum/PINN_lr_data_0.001_lr_physics_0.01_hidden_3x64_episodes_100000.gif" 
  alt="animated"  width="800" height="320" />
</p> 
<br />
  
# Acknowledgments
### Code 
* [othneildrew](https://github.com/othneildrew/Best-README-Template)
* [lukepolson](https://github.com/lukepolson/youtube_channel/blob/main/Python%20Metaphysics%20Series/vid4.ipynb)
* [zjor](https://github.com/zjor/inverted-pendulum)
* [Brunton and Kutz](http://databookuw.com)
* [Ben Moseley](https://github.com/benmoseley/harmonic-oscillator-pinn)
<!-- [apf99](https://github.com/apf99/Simple-Pendulum-Model) -->

### Literature
* [Ben Moseley](https://benmoseley.blog/my-research/so-what-is-a-physics-informed-neural-network/)
  
<!-- * [Hamiltonian Neural Networks](https://paperswithcode.com/paper/hamiltonian-neural-networks) --> 

## Clone Repository
   ```sh
   git clone https://github.com/lennart2810/InvertedPendulumSDS.git
   ```

<!-- inline code -->
<!-- Clone the repo `git clone https://github.com/lennart2810/SDS_Projektarbeit.git` to get started. -->

<p align="right"><a href="#top">back to top</a></p>
