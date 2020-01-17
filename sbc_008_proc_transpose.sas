
proc transpose data=work.temp_grp
               out =work.temp_grp
               prefix=grp;
    id bus_grp;
    by category ;
    var cnt;
run;