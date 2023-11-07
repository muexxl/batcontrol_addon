In winter time there is usually not enough energy available from your residential pvinstallation to meet your demand.
So you need to get additional energy from the grid.
This software helps you to get the additional energy at the cheapest price by controlling your inverter in a smart way.

The addon gets three forecasts

1. electricty price forecast - from the Tibber API
2. your electricty production forecast based on the pv installation that you enter in config/batcontrol_config.yaml.
   KUDOS to forecast.solar!!!
3. your electricty consumption forecast based on the load profile. The load profile is scaled to the annual consumption that you provide in config/batcontrol_config.yaml

Based on the three forecasts AND the current state of charge (SOC) the software puts the inverter in one of the three modes:

MODE 0 - DISCHARGE ALLOWED .
This is the normal mode of the battery if there is sufficient energy available or energy is currently expensive. If the battery is full the surplus will be feed-in. If there is not enough energy coming from your pv installatation to meet your demand energy from the battery will be used.

MODE 1 - AVOID DISCHARGE.
If your consumption exceeds your current production energy from the grid will be used and the battery will not be discharged. This mode is used if prices are increasing in the future and the energy from the battery can be more efficiently used in the future

MODE 2 - CHARGE FROM GRID.
The battery is charged from the grid at a certain charge rate. This mode calculates the estimated required energy for future high priced hours. The objective is to charge the battery enough so that you do not need to consume energy from the grid in hours with high prices.
