//Circleクラスのインスタンスを宣言
Circle[] circles=new Circle[100];
Beem[] beems=new Beem[100];

PImage photo;
PImage photo2;

void setup(){
  size(600,600);
  noStroke();  
  for(int i=0;i<circles.length;i++) {
    circles[i]=new Circle(random(width), random(height), random(1,40), random(1.0, 10.0), random(1.0, 10.0),random(255),random(255),random(255));
  }
  for(int i=0;i<beems.length;i++) {
    beems[i]=new Beem(random(width), random(height), random(width+random(20)), random(width+random(20)), random(1.0, 10.0), random(1.0, 10.0),random(255),random(255),random(255));
  }
  photo = loadImage("dance_wakamono.png");
  photo.resize( 2*photo.width, 2*photo.height );
  photo2 = loadImage("kurufuku_group.png");
}


void draw(){
  background(random(100),random(100),random(100)); //背景は白
  
  //image(photo, 0, height-random(500,520));
  image(photo, 300, height-random(450,470));
  image(photo2, 0, height-random(300,320));
  //常にcircles[]を更新
  //display()メソッドを実行
  for(int i=0;i<circles.length;i++){
    circles[i].update();
    circles[i].display();
  } 
  for(int i=0;i<beems.length;i++){
    beems[i].update();
    beems[i].display();
  } 
  
  noStroke();
  fill(random(100),random(100),random(100));
  ellipse(0,0,100,100);
}

   
 