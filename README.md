# Indoor Hydro
Indoor Hydroponic Garden Documentation


This is a write-up of my small indoor hydrponic garden. I use it to grow chilis and bell peppers.

[Live Online Dashboard](http://hydro.weekendhack.it/indoor.html)

## TL;DR
- [Ebb & Flow technique](https://en.wikipedia.org/wiki/Ebb_and_flow) ([other simple example](http://www.hydroponics-simplified.com/ebb-and-flow-hydroponic.html))
- DIY grow tent, based on an Ikea shelf covered in reflective mylar sheeting (pics below)
- 125W CFL Grow light with reflector. [Like this kit](http://www.ebay.de/itm/Elektrox-125-W-125-Watt-Dual-ESL-CFL-Wuchs-Blute-2100K-inkl-Reflektor-/321824373773?hash=item4aee3a3c0d:g:zrcAAOSwT6pVwe4s)
- Nutrients: [Cellmax Hydro Grow ](http://www.hydroponics.eu/nutrients-and-additives-c-20/cellmax-s-25/cellmax-hydro-grow-2x1l-soft-water-1669.html)
- Raspberry Pi controls pump and light using an [EnerGenie EG-PMS2](http://www.amazon.de/gp/product/B00BAQZJ4K?psc=1&redirect=true&ref_=oh_aui_detailpage_o04_s00)

## Hardware

### Grow Light and Reflector
To survive the dark winter months, the plants need light. Lighting is a big topic and many have strong opinions on it.

Regardless of what your favourite is, [CFL:s](https://en.wikipedia.org/wiki/Compact_fluorescent_lamp) are the go-to alternative for cheap, reliable and efficient ligting. There might be better alternatives, but then you need to shell out a lot more money.

I bought an [Electrox Grow, 125W](http://www.elektrox.de/en/seite1_en.html) and it performs very well for me. Ignorable heat and a lot of light.

In addition to the light, you will need a reflector. I bought my light in a kit which included a reflector. 
Something like [this](http://www.ebay.de/itm/Elektrox-125-W-125-Watt-Dual-ESL-CFL-Wuchs-Blute-2100K-inkl-Reflektor-/321824373773?hash=item4aee3a3c0d:g:zrcAAOSwT6pVwe4s). Cost: About €50 for lamp and reflector.


### The Pump
An aquarium pump is silent and provides enough lift to cirulate the water from the tank to the grow tray above it.

I use an [Eheim compact 300](http://www.amazon.de/Eheim-1000220-compact-Aquarienpumpe-300/dp/B000A2162Y/ref=pd_bia_nav_t_1?ie=UTF8&refRID=06MFMJK2EXJ20SDJ3KZG). The main advatage, outside of being affordable and of high quality, is that the flow rate is easy to set.


### Grow Tent (DIY)

Light will be your most scarce resource and the electricity needed most likely the most expensive factor in day-to-day operations. It is important not to waste it. This means you need to encase the garden in a small reflective tent to make sure as much light as possible is going to the plants.

For my grow tent, I bought [reflective mylar sheeting](http://www.hydroponics.eu/lighting-c-24/reflective-sheeting-s-187/mylar-reflective-sheeting-25545.html) and used it as walls on an metallic Ikea shelf. See photos below.


## Monitoring and Control
Basically you just need two timers; One interval timer for the pump intervals (1min every 15min for example) and an additional 
timer to switch on the light in the morning and then switch it off again in the evening. 18 hours on, is said to be ideal. 
I currently keep the light running for 14h per day.

Since I don't have an interval timer, but I own several Rasberry Pi:s, I just hooked up an electrical socket to the a RasPi and 
added cron job entries to switch the pump and light on and off.

### Raspberry Pi

Current crontab entries, controlling lighting and pump intervals.


```
# m h  dom mon dow   command
*/15 6-20 * * * /home/hydro/bin/togglePump.sh
30 20-23 * * * /home/hydro/bin/togglePump.sh
0 7 * * * /home/hydro/bin/lightOn.sh
0 20 * * * /home/hydro/bin/lightOff.sh
```


### Programmable USB multiple socket
EnerGenie manufactures great, Pi-friendly, multiple sockets that are controllable over USB, using built-in relays. 
I went with the [EnerGenie EG-PMS2](http://www.amazon.de/gp/product/B00BAQZJ4K?psc=1&redirect=true&ref_=oh_aui_detailpage_o04_s00) 
and it worked right out of the box. Install the packages/drivers on the Pi and then you can switch the sockets on and off 
using shell commands. Very straight forward and no programming required!


## Medium And Nutrients
- Medium: Rockwool in net pots, with expanded clay pellets in between as filler. 
- Nutrients: [Cellmax Hydro Grow ](http://www.hydroponics.eu/nutrients-and-additives-c-20/cellmax-s-25/cellmax-hydro-grow-2x1l-soft-water-1669.html) Two component solution mixed X+Y equal parts, 4ml/l.


## Photos

**Plants in net pots, standing in expanded clay**

![grow tray](/images/grow_tray.jpg?raw=true "Grow Tray")

**Grow Tent**

![Grow Tent](/images/grow_tent_front_up.jpg?raw=true "Grow Tent")

![Grow Tent](/images/grow_tent_front_down.jpg?raw=true "Grow Tent")

![Grow Tent](/images/grow_tent_side.jpg?raw=true "Grow Tent")

