program main();

task task_return();
$display("Inside Task : Before return statement");
return;
$display("Inside Task : After return statement");
endtask

initial
task_return();

endprogram