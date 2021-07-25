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


$inset_legend_depth = 0.8;
keyPosition = [0,-0.3];
legendSize =5;
secondaryLegendsSize = 4;
secondaryLegendsPosition = [0.75,0.9];
secondaryArrwoLegendsSize = 5;
frontLegendSize =4;
fKeyLegendSize = 4;
fKeyPosition = [0,-0.5];
row = 0;

$stem_type = "rounded_cherry";

/*
fKeyTopLegends =    [ "U", "I", "O", "Q"];
fKeySecondaryLegends = [ "7/", "8(", "9)", "@"];
fKeyFrontLegends =  ["F8", "F9", "F10", "F2"];

topLegends =    [ "K", "L", ")" ];
KeySecondaryLegends = [ "5%", "6&", "}", "@"];
frontLegends =  [ "PrSc",  "ScLo", "Vol-" ];

*/

/*
translate_u(0,2)
dcs_row(row) legend("Esc", position=[0,-0.75], size=4) front_legend("F1",position=fKeyPosition, size=fKeyLegendSize) 1u() key();
*/

/*
// **** Tux ***
translate_u(0,-1)
dcs_row(row)
secondary_legend("A",position=[0.1,0], size=8, font="Untitled1:style=Regular")
1u() key();
*/

/*
translate_u(0,2)
dcs_row(row) legend("Alt", position=[0,-0.7], size=4)
secondary_legend("Gr",position=[0,0.7], size=4)
1u() key();

*/

//  legends = ["←", "↓", "→", "↑"];
/*
fkeys = [
          ["E","!","F4"],
          ["R","[","F5"],
          ["T","]","F6"],
          ["Y","=","F7"],
          ["U","7/","F8"],
          ["I","8(","F9"],
          ["O","9)","F10"],
          ["P","*","F11"],
          ["Å","+","F12"]
        ];
*/
/*
fkeys = [
          ["Q","@","F2"],
          ["U","7/","F8"],
          ["I","8(","F9"]
        ];

for (x =[0:len(fkeys)-1]) {
  translate_u(x,0)
  dcs_row(row)
  legend(fkeys[x][0],position=[0,-0.75], size=legendSize)
  secondary_legend(fkeys[x][1],position=[0.75,0.9], size=secondaryLegendsSize, font=fkeys[x][3])
  front_legend(fkeys[x][2],position=fKeyPosition, size=fKeyLegendSize, font=fkeys[x][4])
  1u()
  key();
} 
*/

/*
keys = [
              ["A","←","CpLc","DejaVu Sans Mono:style=Book"],
              //["S","↓","","DejaVu Sans Mono:style=Book"],
              //["D","→","","DejaVu Sans Mono:style=Book"],
              ["(","{","n","Roboto:style=Regular","font bottons music:style=Regular"],
              [")","}","o","Roboto:style=Regular","font bottons music:style=Regular"],
              ["N","|§","a","Roboto:style=Regular","font bottons music:style=Regular"],
              //["J","4","Ins"],
              ["M2"],
              ["Alt"],
              ["Del"]

];
*/
/*
keys = [
              ["F","<"],
              ["G",">"],
              ["H","#"],
              ["M","1!","g","Roboto:style=Regular","font bottons music:style=Regular"],
              ["J","4","Ins"],
              ["Æ","-","NuLc"],
              ["Ø","/","Paus"]
              ["B","?","¨^~"],
              ["\"","0","f","Roboto:style=Regular","font bottons music:style=Regular"],
              ["'",".","e","Roboto:style=Regular","font bottons music:style=Regular"],

];
*/

translate_u(0,-1)
dcs_row(row)
legend("F", position=[0,-0.75], size=legendSize)
secondary_legend("<",position=[0.75,0.9], size=secondaryLegendsSize)
1u() key() {
  translate([0,-5,0.5]) scale(1) import("assets/keybump.stl");
};

translate_u(1,-1)
dcs_row(row)
legend("J", position=[0,-0.75], size=legendSize)
secondary_legend("4",position=[0.75,0.9], size=secondaryLegendsSize)
front_legend("Ins",position=keyPosition, size=frontLegendSize)
1u() key() {
  translate([0,-5,0.5]) scale(1) import("assets/keybump.stl");
};

keys = [
              ["B","?","¨^~"],
              ["\"","0","f","Roboto:style=Regular","font bottons music:style=Regular"],
              ["'",".","e","Roboto:style=Regular","font bottons music:style=Regular"],
];


for (x =[0:len(keys)-1]) {
  translate_u(x,-2)
  dcs_row(row)
  legend(keys[x][0],position=[0,-0.75], size=legendSize)
  secondary_legend(keys[x][1],position=[0.75,0.9], size=secondaryLegendsSize, font=keys[x][3])
  front_legend(keys[x][2],position=keyPosition, size=frontLegendSize, font=keys[x][4])
  1u()
  key();
} 

/*
keysDoubLegend = [
              [",",";","2"],
              [".",":","3"],
              ["-","_",",","\\`´"],
];


for (x =[0:len(keysDoubLegend)-1]) {
  translate_u(x,-1)
  dcs_row(row)
  legend(keysDoubLegend[x][1],position=[-0.9,-0.9], size=legendSize)
  legend(keysDoubLegend[x][0],position=[-0.9,0], size=legendSize)
  secondary_legend(keysDoubLegend[x][2],position=[0.75,0.9], size=secondaryLegendsSize, font=keysDoubLegend[x][4])
  front_legend(keysDoubLegend[x][3],position=keyPosition, size=frontLegendSize, font=keysDoubLegend[x][5])
  1u()
  key();
} 
*/

/*
keysLargeSecondary = [
  

              ["X","PgUp"],
              ["C","PgDn"],
              ["V","End","q","Roboto:style=Regular","font bottons music:style=Regular"],
];



for (x =[0:len(keysLargeSecondary)-1]) {
  translate_u(x,-3)
  dcs_row(row)
  legend(keysLargeSecondary[x][0],position=[0,-0.75], size=legendSize)
  secondary_legend(keysLargeSecondary[x][1],position=[0,0.9], size=3.3, font=keysLargeSecondary[x][3])
  front_legend(keysLargeSecondary[x][2],position=keyPosition, size=frontLegendSize, font=keysLargeSecondary[x][4])
  1u()
  key();
} 
*/


/*
1_5Keys = [
              ["Enter"],
              ["M1"],

              ["Tab"],
              ["Space"],
              ["M1"]
];

for (x =[0:len(1_5Keys)-1]) {
  translate_u(x *2 ,-4)
  dcs_row(row)
  legend(1_5Keys[x][0],position=[0,0], size=legendSize)
  1_5u()
  key();
} 

//Backspace
translate_u(-2 ,-4)
 dcs_row(row) 
secondary_legend("←", size=10, font="DejaVu Sans Mono:style=Book")
  1_5u()
  key();;

/*
1_25Keys = [
              ["Shift"],
              ["Ctrl"],
];

for (x =[0:len(1_25Keys)-1]) {
  translate_u(x *2 ,-6)
  dcs_row(row)
  legend(1_25Keys[x][0],position=[0,0], size=4)
  1_25u()
  key();
} 

*/



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
