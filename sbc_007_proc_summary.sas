
proc summary data=work.test1   (where=(prlos=0)) nway ;
    class region;
    class hosp_type;
    var  amount;

    output out=work.test_
              (drop=_type_ _freq_)
              n=hosp_n_cnt
              sum(amount)   =sum_amount
              p10(amount)   =p10_amount
              p99(sales)    =p99_sales
              pctsum(sales) =pct_sum_of_sales
              mean(amount)  =avg_amount;
run;
