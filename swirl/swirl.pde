/*
swirl
 mutsumi s.
 2018.06.01
 2020.05.03
 2022.10.20
*/

int initNum = 1000;
//number of dots/circles

float sz = 5.0;//rad of dot
float pDiv = 100.0;//parameter determining motion:def 100.0
float rDiv = 10.0;//parameter determining motion:def 10.0
float cDiv = 8.0;//parameter determining color change: def 8.0
float sat=70.0, brg=80.0, alp=50.0;//color parameters。
float rad, ax, ay, rd;

void setup() {
  size( 768, 768);
  colorMode( HSB, 360, 100, 100, 100 );
  noStroke();
  ellipseMode(RADIUS);
  rad=width/4.0;
}

void draw() {

  background(0);

  for ( int i =0; i< initNum; i ++ ) {
    ax = cos( radians( frameCount*i/pDiv ) );
    ay = sin( radians( frameCount*i/pDiv ) );

    rd = (rad-i)*cos( radians( frameCount/rDiv ) );
    fill( color( (frameCount+i/cDiv)%360, sat, brg, alp ));
    ellipse( width/2.0+rd*ax, height/2.0+rd*ay, sz, sz );
  }
}
