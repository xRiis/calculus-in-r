# differentiate

## Purpose
Take the first and second derivatives of any expression with up to two independent variables. Also determine partial derivatives with respect to x, then y. This script is also located in the root directory as an example.

## How to use
Run the script using whatever program you prefer - I normally just load scripts like these into my preferred IDE, [RStudio](https://www.rstudio.com/). As soon as the script runs, you will be prompted via the console to enter the function you wish to differentiate. Do not include any whitespace, or you will receive an error!

## Known issues
A problem I've noticed with using D(), a function included in the base R package, is that some characters which should be at the end of the derivative end up at the front, resulting in the derivative of "2*x^2" displaying as "*22". It's not hard to understand but it's annoying. As soon as I hear of a solution, I'll implement a fix.