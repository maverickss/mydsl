grammar mydsl;

IPString :  'ip' IP ;
ID :  [a-z]+  ;
WS :  [ \t\r\n]+ -> skip ;

IP :  NonzeroDigit Digit? Digit? '.' IPPart '.' IPPart '.' IPPart ;

IPPart : Digit Digit? Digit? ;

pingExpression
   : IPString '=>' IPString ;

   fragment
   NonzeroDigit : [1-9] ;

   fragment
   Digit : [0-9] ;
