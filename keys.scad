//
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key


// example row
/*
for (x = [0:1:4]) {
  translate_u(-1,-x) dcs_row(x) legend(str(x), size=6) key();
} 
*/

// example layout
/* preonic_default("dcs"); */

//60_percent_default("g20") key();

//dactyl_manuform_4x6_legends("dcs") key();
//$font2="font bottons music:style=Regular";
//$font="DejaVu Sans Mono:style=Book";
$font="Roboto:style=Regular";


$inset_legend_depth = 0.5;
legendSize =5;
secondaryLegendsSize = 3;
frontLegendSize =3;
fKeyLegendSize = 4;
fKeyPosition = [0,-0.5];
row = 0;

//translate_u(1,0)
//dcs_row(row) legend("K", position=[[1,1]] size=5) secondary_legend("5", size=3) front_legend("PrSc", size=frontLegendSize) 1u() key();
//dcs_row(row) legend("K", position=[0,-0.75], size=5) secondary_legend("5%",position=[0.75,1], size=3) front_legend("PrSc",position=[0], size=frontLegendSize) 1u() key();

/*
fKeyTopLegends =    [ "U", "I", "O", "Q"];
fKeySecondaryLegends = [ "7/", "8(", "9)", "@"];
fKeyFrontLegends =  ["F8", "F9", "F10", "F2"];

topLegends =    [ "K", "L", ")" ];
KeySecondaryLegends = [ "5%", "6&", "}", "@"];
frontLegends =  [ "PrSc",  "ScLo", "Vol-" ];

translate_u(0,2)
dcs_row(row) legend("Esc", position=[0,-0.75], size=4) front_legend("F1",position=fKeyPosition, size=fKeyLegendSize) 1u() key();

*/

//  legends = ["←", "↓", "→", "↑"];

fkeys = [ ["W","↑","F3","DejaVu Sans Mono:style=Book"],
          ["E","!","F4"],
          ["R","[","F5"],
          ["T","]","F6"],
          ["Y","=","F7"],
          ["U","7","F8"],
          ["I","8","F9"],
          ["P","*","F11"],
          ["Å","+","F12"]
        ];

for (x =[0:len(fkeys)-1]) {
  translate_u(x,0)
  dcs_row(row)
  legend(fkeys[x][0],position=[0,-0.75], size=legendSize)
  secondary_legend(fkeys[x][1],position=[0.75,1], size=secondaryLegendsSize, font=fkeys[x][3])
  front_legend(fkeys[x][2],position=fKeyPosition, size=fKeyLegendSize, font=fkeys[x][4])
  1u()
  key();
} 

/*
for (x =[0:len(fKeyTopLegends)-1]) {
  translate_u(x,0)
  dcs_row(row)
  legend(fKeyTopLegends[x],position=[0,-0.75], size=legendSize)
  secondary_legend(fKeySecondaryLegends[x],position=[0.75,1], size=secondaryLegendsSize)
  front_legend(fKeyFrontLegends[x],position=fKeyPosition, size=fKeyLegendSize)
  1u()
  key();
} 

for (x =[0:len(topLegends)-1]) {
  translate_u(x,-2)
  dcs_row(row)
  legend(topLegends[x],position=[0,-0.75], size=legendSize)
  secondary_legend(KeySecondaryLegends[x],position=[0.75,1], size=secondaryLegendsSize)
  front_legend(frontLegends[x],position=fKeyPosition, size=frontLegendSize)
  1u()
  key();
} 
*/

/*
dcs_row(row) legend("({", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(0,-1)
dcs_row(row) legend("})", size=6) front_legend("Vol-", size=frontLegendSize) 1u() key();
translate_u(2,0)
dcs_row(row) legend("Enter", size=6) 2u() key();
translate_u(2,-1)
dcs_row(row) legend("Space", size=6) 2u() key();
*/

/*
dcs_row(row) legend("D→", size=legendSize) front_legend("Stop", size=frontLegendSize) 1u() key();
translate_u(1,0)
dcs_row(row) legend("A←", size=legendSize) front_legend("CpLc", size=frontLegendSize) 1u() key();
translate_u(2,0)
dcs_row(row) legend("W↑", size=legendSize) front_legend("F3", size=fKeyLegendSize) 1u() key();
translate_u(3,0)
dcs_row(row) legend("S↓", size=legendSize) front_legend("Play", size=frontLegendSize) 1u() key();
translate_u(4,0)
dcs_row(row) legend("({", size=legendSize) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(5,0)
dcs_row(row) legend("})", size=legendSize) front_legend("Vol-", size=frontLegendSize) 1u() key();
*/

/*
dcs_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(1,0)
dsa_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(2,0)
g20_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(3,0)
grid_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
anslate_u(6,0)
sa_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
anslate_u(5,0)
oem_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
translate_u(4,0)
hipro_row(row) legend("Aa", size=6) front_legend("Vol+", size=frontLegendSize) 1u() key();
*/
