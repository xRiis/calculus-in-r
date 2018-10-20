## SETUP
askEq <- function()
{ 
  p <- readline(prompt="Enter an expression in terms of x and y: ")
  return(p)
}

beginText <- function()
{
  message("======================================================START======================================================")
}

summaryFunc <- function(deriv_X, deriv_Y, secondDeriv_X, secondDeriv_Y, deriv_XY)
{
  message("         First derivative with respect to X: ", deriv_X)
  message("         First derivative with respect to Y: ", deriv_Y)
  message("        Second derivative with respect to X: ", secondDeriv_X)
  message("        Second derivative with respect to Y: ", secondDeriv_Y)
  message("  Second derivative with respect to X and Y: ", deriv_XY)
}

endText <- function()
{
  message("=======================================================END=======================================================")
}

## FIND THE EQUATION AND MAKE IT USEFUL BY parse()
eq <- askEq()
eq <- parse(text=eq)

## GET SOME DERIVATIVES
## fx DENOTES THE DERIVATIVE OF eq WITH RESPECT TO x, NOT f(x)
fx <- D(eq,'x')
fy <- D(eq,'y')
fxx <- D(fx,'x')
fyy <- D(fy,'y')
fxy <- D(fx,'y')

## DISPLAY IT TO THE USER
beginText()
summaryFunc(fx, fy, fxx, fyy, fxy)
endText()