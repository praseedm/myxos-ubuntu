decl
	string command;
	integer pid;
enddecl

integer main()
{
	print(">> ");
	read(command);
	
	while (command != "exit") do
		pid = Fork();
		
		if (pid > -1) then
			pid = Wait(pid);
		endif;
		
		if (pid == -2) then
			pid = Exec(command);
			if (pid == -1) then
				print("Error running program");
				break;
			endif;
		endif;
		
		if (pid == -1) then
			print("Cannot fork");
		endif;
		
		print(">> ");
		read(command);
		
	endwhile;
	
	print("Process exited");
	return 0;
}
