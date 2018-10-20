## SETUP
askEq <- function()
{ 
  p <- readline(prompt="Enter an expression in terms of x and y: ")
  return(p)
}

findGrad <- function(x,y)
{
  x <- deparse(x)
  y <- deparse(y)
  grad <- paste("(",x,")","I + ","(",y,")","J",sep="")
  return(grad)
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

divider <- function()
{
  message("     =======================================================================================================     ")
}

msgGrad <- function(grad)
{
  message("                  Gradient vector of f(x,y): ", grad)
}

msgOrtho <- function(x,y)
{
  x <- deparse(x)
  y <- deparse(y)
  ortho_first <- paste("-(",x,")","I + ","(",y,")","J",sep="")
  ortho_second <- paste("(",x,")","I - ","(",y,")","J",sep="")
  message("          First orthogonal vector to f(x,y): ", ortho_first)
  message("         Second orthogonal vector to f(x,y): ", ortho_second)
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

## FIND THE GRADIENT
gradient <- findGrad(fx,fy)

## DISPLAY EVERYTHING TO THE USER
beginText()
summaryFunc(fx, fy, fxx, fyy, fxy)
divider()
msgGrad(gradient)
msgOrtho(fx,fy)
endText()