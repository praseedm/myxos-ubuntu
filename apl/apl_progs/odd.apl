integer main()
{
	integer pid, ret, i, j;
	print(1);
		
	pid = Fork();
	if(pid == -2) then
		ret = Exec("even.xsm");	
	endif;
	
	i = 3;
	while(i < 20) do
		print("starting odd wait");
		ret = Wait(pid);

		print(i);
		i = i + 2;
		ret = Signal();
	endwhile;
	
	return 0;
}
