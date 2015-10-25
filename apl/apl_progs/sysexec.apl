integer main()
{
integer pid;
print(1);
pid = Fork();
if (pid == -2) then
// child
pid = Exec("even.xsm");
endif;
print(3);
print(5);
print(7);
print(9);
print(11);
print(13);
print(15);
print(17);
print(19);
return 0;
}
