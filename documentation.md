# Documentation

## Purpose

This app was created to explain variance for poker players in the long term.
Based on two variables that are comom for the players, **Winrate** and **Standard Deviation**, we can plot a simulation of 100k hands played and see the possible outcomes in **Buy-ins**.
That way, the players can have a clue for what to expect in terms of results (in buy-ins), in a range of 100k hands played based on their win rate and stardard deviation.

## How to use

Simply input the variables needed and see the generated plot. You can change all the values, and the plot will reactive be rendered with new values.

**Input values:**
- Bigger winrates, should win more buy-ins, which is good.
- Lower standard deviations, should have more consistency across the results. Which is also good.  

**Output values:**
- Bigger number of buy-ins is a better outcome.

## Where to obtain these variables?

If you are serious poker player, you will need to open your poker tracker or holdem manager, and find your winrate in bb/100 and the standard deviation.

If you are not a poker player, you probably will not have how to get it, but I am provinding some exemples bellow.

As show in [this article](http://www.blackrain79.com/2014/06/good-win-rates-for-micro-and-small_6.html), top winrates from good poker player at 25NL vary from 6 to 13bb. So, we can expected that non top players, has worse winrates.

So, just play with the slices and see the possible outcomes.

## Examples

Winrate = 6bb, Standard Deviation = 85

Winrate = 2bb, Standard Deviation = 100

Winrate = 0bb, Standard Deviation = 120

## Glossary

**SD:** Standard Deviation.  

**Winrate in bb/100:** Average amount of **big blinds(bb)** per 100 hands winning or loosed by a player in the long term.  

**Buy-in:** In this case, each buy-in accounts for 100 big blinds. So 10 buy-ins are equal to 1.000 big blinds(bb).