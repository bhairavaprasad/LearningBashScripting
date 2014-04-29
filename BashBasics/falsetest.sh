x=0;     [ "$x" ] && echo x is true 1; 
x="";    [ "$x" ] && echo x is true 2; 
x=" ";   [ "$x" ] && echo x is true 3; 
unset x; [ "$x" ] && echo x is true 4; 
x=false; [ "$x" ] && echo x is true 5; 
