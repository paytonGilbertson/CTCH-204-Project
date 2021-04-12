PFont font;
float letterX = 15;
float letterY = 15;

void techTime(){
  font = createFont("Courier", 15);
  textFont(font);
  background(106, 55, 27);
  drawPoly(computer);
  writeWords();
}

int[] computer = {#d8dacc,
  363,143,489,154,500,162,489,248,500,252,500,331,493,342,322,298,322,281,351,246,343,238
};

//////////// From Ariel's Undersea Massacre ///////////////////
void drawPoly(int[] polygon) {
  fill(polygon[0]);   // First element in the array is the fill colour
  beginShape();
  for (int i=1; i < polygon.length-1; i+=2)
  {
    vertex(polygon[i], polygon[i+1]);
  }
  endShape();
  return;
}

char[] code = {
  'v','a','r',' ','t','h','e','y','D','i','g','i','t','s',',',' ','t','h','e','S','t','a','s','h',',',' ',
  'n','e','x','t','F','i','g','u','r','e',',',' ','a','n','E','m','p','t','y','H','a','s','h',' ','=',' ','{','}',
  'f','u','n','c','t','i','o','n',' ','i','s','C','h','i','l','l','i','n','(','m','a','F','i','g','u','r','e',')',' ','{',
  't','h','e','S','t','a','s','h',' ','=',' ','t','h','e','S','t','a','s','h',' ','|','|',' ','a','n','E','m','p','t','y','H','a','s','h',
  'n','e','x','t','F','i','g','u','r','e',' ','=',' ','0',' ','/','*',' ','p','i','c','t','u','r','e',' ','m','e',' ','n','i','l','l','i','n',' ','*','/',
  '/','*',' ','i','n',' ','p','r','e','p','a','r','a','t','i','o','n',' ','f','o',' ','f','i','l','l','i','n',' ','*','/',
  '/','*',' ','t','h','e','y',' ','p','r','e','c','o','n','d','i','t','i','o','n',' ','i','s',' ','p','a','r','t','i','t','i','o','n',' ','s','o',' ','*','/',' ','d','o','F','i','s','s','i','o','n','O','n','(','m','a','F','i','g','u','r','e',')',
  's','u','m','T','h','e','y','S','q','u','a','r','e','s','(',')',' ','/','*',' ','q','u','a','d','r','a','t','i','c',' ','a','d','d','i','t','i','o','n',',',' ','l','i','k','e',' ','a',' ','m','a','t','h','m','a','t','i','c','i','a','n',' ','*','/',
  '/','*',' ','a','n','d',' ','t','h','e',' ','s','t','a','s','h',' ','i','s',' ','t','h','e',' ','h','a','s','h',' ','c','a','c','h','i','n','g',' ','a','l','l',' ','m','y',' ','d','e','a','d',' ','f','i','g','u','r','e','s',' ','*','/',
  '/','*',' ','i','f',' ','y','o','u','r',' ','v','a','l','u','e',' ','i','s',' ','o','n','e',',',' ','y','o','u',' ','w','o','n',',',' ','o','r',' ','i','f',' ','y','o','u',' ','i','n',' ','t','h','a',' ','s','t','a','s','h',',',' ','y','o','u',' ','d','o','n','e',' ','*','/',
  'i','f',' ','(','n','e','x','t','F','i','g','u','r','e',' ','=','=',' ','1',')',' ','r','e','t','u','r','n',' ',''"','c','h','i','l','l','i','n','"',
  'i','f',' ','(','t','h','e','S','t','a','s','h','[','n','e','x','t','F','i','g','u','r','e',']',' ','=','=', 'x',')',' ','r','e','t','u','r','n',' ','"','i','l','l','i','n','"',
  't','h','e','S','t','a','s','h','[','n','e','x','t','F','i','g','u','r','e',']',' ','=',' ','x',' ','/','*',' ','k','e','e','p','i','n',' ','t','h','e',' ','h','i','s','t','o','r','y',' ','*','/',
  '/','*',' ','b','r','e','a','k','i','n',' ','t','h','e',' ','c','h','a','i','n',' ','o','f',' ','i','t','e','r','a','t','i','o','n',' ','m','i','s','e','r','y',' ','*','/',
  'r','e','t','u','r','n',' ','i','s','C','h','i','l','l','i','n','(','n','e','x','t','F','i','g','u','r','e',')',' ','/','*',' ','r','e','c','u','r','s','e',',',' ','r','e','j','i','g','g','a',',',' ','r','e','-','t','r','a','v','e','r','s','e',' ','t','h','e',' ','v','e','r','s','e',' ','*','/',
  '}',
  'f','u','n','c','t','i','o','n',' ','d','o','F','i','s','s','i','o','n','O','n','(','n',')',' ','{','t','h','e','y','D','i','g','i','t','s',' ','=',' ','n','.','t','o','S','t','r','i','n','g','(',')','.','s','p','l','i','t','(',')','}',
  'f','u','n','c','t','i','o','n',' ','s','u','m','T','h','e','y','S','q','u','a','r','e','s','(',')',' ','{','t','h','e','y','D','i','g','i','t','s','.','f','o','r','E','a','c','h','(','f','u','n','c','t','i','o','n','(','n',')','{','n','e','x','t','F','i','g','u','r','e',' ','+','=',' ','n','*','n','}',')','}'
};

void writeWords() {
 fill( 32, 194, 14);
 for(int i = 0; i < code.length; i++){
  text(code[i], letterX, letterY);
  letterX += 15; 
  letterY+= 15;
  if(letterX > 485){
   letterX = 15; 
  }
 }
}
