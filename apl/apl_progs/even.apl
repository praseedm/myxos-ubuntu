integer main()
{
	integer ret, i,j,ppid;

	ppid = Getppid();
	i = 2;
	while(i < 20) do
		print("starting even wait");
		ret = Wait(ppid);
		print(i);
		i = i + 2;
		ret = Signal();
		

		

	endwhile;
	
	return 0;
}
