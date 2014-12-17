//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies

PImage play, play2, play3, play4, hr, spot, pspot; //creates variables
boolean on = false; 
boolean on2 = false;
float alpha = 100;
PFont f;
Maxim maxim;
AudioPlayer player;
AudioPlayer player2;  //acknowledges that there will be two sound files


void setup()
{
  size(500, 600); //sets size of program screen
  play = loadImage("http://i.imgur.com/44zfFiH.png"); //loads images according to URL link
  play2 = loadImage("http://i.imgur.com/Mpz0qqL.png");
  play3 = loadImage("http://i.imgur.com/CmdIltf.png");
  play4 = loadImage("http://i.imgur.com/ByzTc5S.png");
  hr = loadImage("http://i.imgur.com/f2EvzLQ.png");
  spot = loadImage("http://i.imgur.com/2TjSoll.png");
  pspot = loadImage("http://i.imgur.com/nhmH0oV.png");
  play.resize(100,0); //resizes each image to 100,0
  play2.resize(100,0);
  play3.resize(100,0);
  play4.resize(100,0);
  maxim = new Maxim(this); 
  player = maxim.loadFile("Test.wav"); //loads file accordingly
  player2 = maxim.loadFile("test2.wav");
  f = createFont("Arial",16,true); //sets font-family and size
}

//END OF SETUP//

//START OF DRAW//
void draw()
{
   background(#2f3f3f); //sets colour of background
    fill(#f9ef83, alpha);
 textFont(f,9);
 text("Yaay! Thanks for downloading :)",340,580);
    if(on){
    image(spot,0,0); //treat these like layers, "spot" has to be above "play 2" so that it goes behind the image
    image(play2,200,50);

 }else{
   image(play,200,50);
 }
 if(on2){
    image(pspot,0,0);
    image(play4,200,450);
  
 }else{
   image(play3,200,450);
 }
 
 image(hr,0,0);
 
 fill(#818181);
 textFont(f,10);
 text("DOWNLOAD TO VIEW PROPERLY",10,18);
 fill(#818181);
 textFont(f,8);
 text("CLICK PLAY BUTTONS TO PLAY MUSIC",10,28);
 fill(#818181);
 textFont(f,8);
 text("CLICK AGAIN TO STOP PLAYING MUSIC",10,38);

}

void mousePressed() {
    if(mouseX < 295 && mouseX > 205 //when mouse is pressed, something happens:
  && mouseY < 145 && mouseY > 60){
    on = !on;
  }
  
 if(on){
   player.play(); //function which plays music
 }else{
   player.stop(); //function which stops music 
 }
 
 {
 if(mouseX< 295 && mouseX > 205
 && mouseY < 550 && mouseY > 460){
   on2 = !on2;
 }
 if(on2){
   player2.play();
 }else{
   player2.stop();
 }
}
}

/////end of code/////
