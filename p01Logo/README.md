#Creative Coding School in Sapporo 2015 vol.1

##基本図形を描く

```processing
// 最初に1回実行される関数
void setup() {
  // サイズ
  size(500, 500);
  // 背景色
  background(220);
  // 塗りの色
  fill(0);
  // 線の色
  stroke(255);
  // 正方形を描く
  rect(100, 100, 300, 300);
}

// 実行中繰り返し実行される関数
void draw() {
}
```

##Processingの座標系

左上が原点。
X軸は右向き、Y軸は**下向き**です。

![座標系](https://processing.org/reference/environment/images/coordinates2D3D.png)

##図形を描く関数

| 図形 | 関数 |
|---|---|
|点|point(x, y);|
|直線|lone(x1, y1, x2, y2);|
|長方形|rect(x, y, w, h);|
|三角形|triangle(x1, y1, x2, y2, x3, y3);|
|楕円|ellipse(a, b, c, d);|
|円弧|arc(a, b, c, d, start, stop);|

##関数を自作しよう

rect(x, y, w, h)の代わりに、logo(x, y, w, h)という関数を作る。

```processing
void logo(float x, float y, float w, float h) {
	//ここにロゴを描くコードを書く
}
```

