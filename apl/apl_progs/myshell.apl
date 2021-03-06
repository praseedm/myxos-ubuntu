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
		     print(pid);	
                     pid = Wait(pid);
		endif;
		
		if (pid == -2) then
                 print("Child :");
			pid = Exec(command);
			if (pid == -1) then
				print("Error Exec");
				break;
			endif;
		endif;
		
		if (pid == -1) then
			print("Error fork");
		endif;
		
		print(">> ");
		read(command);
		
	endwhile;
	
	print("Process exited");
	return 0;
}
