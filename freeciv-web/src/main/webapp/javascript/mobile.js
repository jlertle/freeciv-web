/********************************************************************** 
 Freeciv - Copyright (C) 2009-2010 Andreas Røsdal   andrearo@pvv.ntnu.no
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
***********************************************************************/


/**************************************************************************
  Called when orientation changes.
**************************************************************************/
function orientation_changed() {

  
  switch(window.orientation){
   case 0:
       //portrait
       break;
  case -90:
  case 90:
       //landscape
       break;
  } 
}

   