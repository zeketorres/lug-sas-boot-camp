/** A Simple MERGE **/

data one;
  input id $ fruit $;
datalines;
a apple
a apple
b banana
c coconut
;
run;

data two;
  input id $ color $;
datalines;
a amber
b brown
c cream
c cocoa
c carmel
;
run;

data both;
  merge one two;
  by id;
run;



proc print data=both;
run;
