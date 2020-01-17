/** Concatenating data sets Using SET **/

data one;
input name $ age;
datalines;
Chris 36
Jane 21
Jerry 30
Joe 49
;
run;


data two;
  input name $ age group;
datalines;
Daniel 33 1
Terry 40 2
Michael 60 3
Tyrone 26 4
;
run;


data both;
  set one two;
run;

proc print data=both;
run;