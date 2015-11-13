integer main()
{
	integer childpid,p, retval,i,k;
         k=10;
	childpid = Fork();
	if(childpid == -2) then
                k=k+20;
		retval = Exec("een.xsm");
        print(k);
	endif;
		
                 childpid = Fork();
                i=0;
                 while(i<100)
                 do
                   i=i+1;
                 endwhile;
                 childpid = Fork();
                  p=Getpid();
                
			print(p);
	
return 0;

}
