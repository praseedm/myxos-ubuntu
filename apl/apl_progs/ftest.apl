decl
	integer option;
	integer result;
        integer new;
	string fileName;
        string word;
	integer FILE;
enddecl

integer main()
{
	print("Enter option");
	print("1. Create");
	print("2. Open");
        print("3. Write");
        print("4. Read");
        print("5. Seek");
	print("6. Close");
	print("7. Delete");
	print("8. Exit");
	
	read(option);

	while(1==1) do
		if(option == 8) then
			break;
		endif;
		
		
		
		if(option == 1) then
			print("Filename? : ");
			read(fileName);	
			result = Create(fileName);
			print(result);
		endif;
		if(option == 2) then
			print("Filename? : ");
			read(fileName);
			FILE = Open(fileName);
			print(FILE);
		endif;
		if(option == 6) then
			result = Close(FILE);
			print(result);
                endif;
                
                if(option == 4) then
			result = Read(FILE,word);
			print(result);
                       if(result == 0) then
                         print(word);             
                       endif;
		endif;
            
		if(option == 7) then
			print("Filename? : ");
			read(fileName);	
			result = Delete(fileName);
			print(result);
		endif;
		if(option == 3) then
			
                        print("word? : ");
			read(word);	
			result = Write(FILE,word);
			print(result);
		endif;
                if(option == 5) then
			
                        print("New? : ");
			read(new);	
			result = Seek(FILE,new);
			print(result);
		endif;
		
		
		read(option);
	endwhile;
	
	return 0;
}

