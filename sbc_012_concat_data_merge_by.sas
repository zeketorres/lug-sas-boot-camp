data one;
  input id $ name $  dept $ project $;
datalines;
000 Miguel A12 Document
111 Fred B45 Survey
222 Diana B45 Document
888 Monique A12 Document
999 Vien D03 Survey
;
run;

data two;
  input id $ name $ projhrs;
datalines;
111 Fred 35
222 Diana 40
777 Steve 0
888 Monique 37
999 Vien 42
;
run;

data both one_only two_only;
  merge one(in=in1)
        two(in=in2);
  by id;
  if in1 and in2 then output both;
  else if in1 then output one_only;
  else output two_only;
run;

title 'Both';
proc print data=both;
run;

title 'One only';
proc print data=one_only;
run;

title 'Two only';
proc print data=two_only;
run;