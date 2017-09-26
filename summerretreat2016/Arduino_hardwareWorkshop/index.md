# Arduino Hardware Workshop

<img src="./pics/arduinologo.png" style="border-style: none"/>

Marvin Reich, Daniel Beiter, Knut Günter

**Summerretreat 2016**

# structure

* quick arduino introduction
* this workshop
* necessary knowledge on the go
* where to start your own project ?

# quick arduino introduction

## arduino

* pure microcontroller
* low power requirement
* small in size (exists even in tiny)
* no (not much) internal storage
* perfect to connect sensors, both digital and analog

## typical arduino tasks

* robotik
* sensor technologies
* client / server for data transfers (UMTS, radio transmitters)

## arduino family

![](./pics/arduino_family.jpeg)

# this workshop

## what do we need?

* microcontroller
* power supply
* storage medium
* computer for operating the microcontroller
* sensors / units to connect
* program (code) to do what you want

## what we will do

1. connect arduino to power supply
2. write a first basic "hello world" script
3. connect sensors to arduino (via breadboard)
4. read and configure data output from sensor readings
5. write an "advanced" script which reads and logs data
6. store data on a sd card

# necessary knowledge on the go

## arduino nano scetch:

![](./pics/nano_scetch.png)

## arduino nano datasheet:

[datasheet](./ArduinoNanoManual23.pdf)

## controller configs arduino IDE

enable:

* Tools $\rightarrow$ Board $\rightarrow$ choose your arduino type
* Tools $\rightarrow$  SerielPort $\rightarrow$ should work out of box, if not set manually

establish:

* write program (sketch)
* compile program
* send program to arduino

control:

* open seriel monitor to see printed output of arduino
* watch out for the baud-rate set

## hello world & LED-blinking

* arduino gui comes with looots of examples ($\rightarrow$ use them!)
* commands, functions and structures often needed can be found here:
[arduino reference page](https://www.arduino.cc/en/Reference/HomePage)

## structure of microcontroller

![](./pics/Microcontroller_edit.png)

## sensor types

two types of (main) sensor groups:

* analog
* digital

connecting sensors: it useful and often unavoidable to read manuals and structograms

## sensors: analog

![](./pics/Analog_Digital_Converter_edit.png)

## sensors: digital

![](./pics/Seriel_Interface_edit.png)

## scripting

1. define what you want to do, make a concept (even if small and simple)

in program code:

2. load necessary libraries
3. define one time "actions" in void setup(){}
4. read in sensor values and store in variables
5. calibrate / adjust read values
6. print some informative message on screen (or in between steps)
7. store data (sd-card !?)
8. think of a time-concept how often script should run

## scripting example

    // load libraries
    #include "hx711.h"
    
    // sensors are analog and connected to A1 and A0
    // setup config for scale reading, as stated in library
    Hx711 scale(A1, A0);

    // define varianles
    int offset, testweight, testweigth_reading;
    float ratio;

    // "one time actions"
    void setup() {
    Serial.begin(9600);
    offset = 8388608;
    //testweight in [g]
    testweight = 200;
    testweigth_reading = 8511488;
    ratio = (testweigth_reading - offset) / testweight;

    // setup calibration for scale readings
    scale.setOffset(offset);
    scale.setScale(ratio);
    }
   
    // loop run over and over again 
    void loop() {
    Serial.println(scale.getGram());

    // "waiting time" in milli seconds
    delay(2000);
    }

## sd cards as storage medium

internal arduino storage is not meant to store real data
so there are 2 options:

1. transfer data via any wireless technology
2. connect a sd-card and store data on it

for sd-cards you need:

* get a sd-card shield
* download library for shield
* include part in code about storing data on card

# where to start your own project ?

## structure

1. figure out what you want to do
2. check what hardware best fits your needs
3. look on the web for similar projects
4. buy the hardware and connect it
5. install drivers and libraries
6. make first tests
7. start with a minimized setup and get more complex

when it all works well:

8. build an individualized circuit board
9. build apropiated casing

## what you should have in mind

* power supply
* storage needed: internal, external, database, data transmission
* libraries: there is always more than just one
* can i do everything with just one microcontroller?
* if you buy cheap hardware, buy more at once!
* degrees of freedom (individuality) vs. guaranteed project success

## hardware

* [pollin](https://www.pollin.de)
* [reichelt](https://www.reichelt.de)
* [watterott](https://www.watterott.com)
* [adafruit](https://www.adafruit.com)
* [seeed](https://www.seeedstudio.com)
* [fritzing: circuit board design](http://fritzing.org/home/)

## software

* [arduino ide](https://www.arduino.cc/en/Main/Software)
* driver for many hardware on (arduino & pi) [github](https://www.github.com)

## tutorials arduino

* [tronixstuff](http://tronixstuff.com/tutorials/)
* [sparkfun](https://learn.sparkfun.com/tutorials/what-is-an-arduino)
* [adafruit](https://learn.adafruit.com/category/learn-arduino)
* [instructables](http://www.instructables.com)
