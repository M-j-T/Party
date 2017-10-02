//Circleクラスの宣言
class Circle { 
  float x, y,eSize, xVel, yVel,red,blue,green; 
 
  //初期化用メソッド（コンストラクタ）
  Circle (float _x, float _y, float _eSize, float _xVel, float _yVel,float _red,float _blue,float _green) {
    x = _x;    //x, y座標の初期値はインスタンスの引数
    y = _y;
    eSize = _eSize;
    xVel = _xVel;     //xVel, yVelの初期値もインスタンスの引数
    yVel = _yVel;
    red=_red;
    blue=_blue;
    green=_green;
  }
 
  //円の位置を更新するメソッド
  void update() {
    x += xVel;    //xVel, yVel分の座標を移動
    y += yVel;
 
    if (x > width||x < 0) {    //円のx座標がウィンドウの幅を超えたら、
      xVel = -xVel;    //位置を0に戻す
    } else if (y > height||y < 0) {    //円のy座標がウィンドウの幅を超えたら、
      yVel = -yVel;    //位置を0に戻す
    }
  }
 
  void display() {
    fill(red, blue,green);    //円の色を決定
    noStroke();
    ellipse(x, y, eSize, eSize);    //円を描く
  }
}