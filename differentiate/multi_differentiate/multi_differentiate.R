## SETUP
askEq <- function()
{ 
  p <- readline(prompt="Enter an expression in terms of w, x, y, and z: ")
  return(p)
}

beginText <- function()
{
  message("======================================================START======================================================")
}

summaryFunc <- function(deriv_W, secondDeriv_W, thirdDeriv_W, deriv_X, secondDeriv_X, thirdDeriv_X, deriv_Y, secondDeriv_Y, thirdDeriv_Y, deriv_Z, secondDeriv_Z, thirdDeriv_Z, deriv_WX, deriv_WY, deriv_WZ, deriv_XY, deriv_XZ, deriv_YZ)
{
  message("     ===================================================W===================================================")
  message("         First derivative with respect to W: ", deriv_W)
  message("        Second derivative with respect to W: ", secondDeriv_W)
  message("         Third derivative with respect to W: ", thirdDeriv_W)
  
  message("     ===================================================X===================================================")
  message("         First derivative with respect to X: ", deriv_X)
  message("        Second derivative with respect to X: ", secondDeriv_X)
  message("         Third derivative with respect to X: ", thirdDeriv_X)
  
  message("     ===================================================Y===================================================")
  message("         First derivative with respect to Y: ", deriv_Y)
  message("        Second derivative with respect to Y: ", secondDeriv_Y)
  message("         Third derivative with respect to Y: ", thirdDeriv_Y)
  
  message("     ===================================================Z===================================================")
  message("         First derivative with respect to Z: ", deriv_Z)
  message("        Second derivative with respect to Z: ", secondDeriv_Z)
  message("         Third derivative with respect to Z: ", thirdDeriv_Z)
  
  message("     =================================================W-->?=================================================")
  message("       Derivative with respect to W, then X: ", deriv_WX)
  message("       Derivative with respect to W, then Y: ", deriv_WY)
  message("       Derivative with respect to W, then Z: ", deriv_WZ)
  
  message("     =================================================X-->?=================================================")
  message("       Derivative with respect to X, then W: ", deriv_WX)
  message("       Derivative with respect to X, then Y: ", deriv_XY)
  message("       Derivative with respect to X, then Z: ", deriv_XZ)
  
  message("     =================================================Y-->?=================================================")
  message("       Derivative with respect to Y, then W: ", deriv_WY)
  message("       Derivative with respect to Y, then X: ", deriv_XY)
  message("       Derivative with respect to Y, then Z: ", deriv_YZ)
  
  message("     =================================================Z-->?=================================================")
  message("       Derivative with respect to Z, then W: ", deriv_WZ)
  message("       Derivative with respect to Z, then X: ", deriv_XZ)
  message("       Derivative with respect to Z, then Y: ", deriv_YZ)
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
fw <- D(eq,'w')
fx <- D(eq,'x')
fy <- D(eq,'y')
fz <- D(eq,'z')
fww <- D(fw,'w')
fxx <- D(fx,'x')
fyy <- D(fy,'y')
fzz <- D(fz,'z')
fwx <- D(fw,'x')
fwy <- D(fw,'y')
fwz <- D(fw,'z')
fxy <- D(fx,'y')
fxz <- D(fx,'z')
fyz <- D(fy,'z')
fwww <- D(fww,'w')
fxxx <- D(fxx,'x')
fyyy <- D(fyy,'y')
fzzz <- D(fzz,'z')

## DISPLAY IT TO THE USER
beginText()
summaryFunc(fw, fww, fwww, fx, fxx, fxxx, fy, fyy, fyyy, fz, fzz, fzzz, fwx, fwy, fwz, fxy, fxz, fyz)
endText()