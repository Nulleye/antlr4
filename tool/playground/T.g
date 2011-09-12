grammar T;
s : i=ifstat  {System.out.println(_input.toString(0,_input.index()-1));} ;

ifstat : 'if' {$s::start = null;} '(' INT ')' ID '=' ID ';' # DoIf;

r[int x] returns [int y]
locals [int z]
	: name=ID		# foo
	| ID (ID|';'{;})	# bar
	;

EQ : '=' ;
INT : '0'..'9'+ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n')+ {skip();} ;
