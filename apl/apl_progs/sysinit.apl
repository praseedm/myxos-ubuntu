integer main()
{
	integer pid;
	print ("Before Fork");
        pid = Fork();
        print("PID:");
        print(pid);
	
        print ("After Fork");
	return 0;
}
