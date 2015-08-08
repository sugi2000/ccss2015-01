#Creative Coding School in Sapporo 2015 vol.1

#ループして図形を描く3

```processing
// 最初に1回実行される関数
void setup() {
  // ウィンドウのサイズ
  size(500, 500);
  // 背景色
  background(220);
}

// 実行中繰り返し実行される関数
void draw() {
  int num = int(map(mouseX, 0, width, 1, 11));
  float logoSize = width / num;
  // ロゴを描く
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      logo(i * logoSize, j * logoSize, logoSize, logoSize);
    }
  }
}

// ロゴを描く関数（自作）
void logo(float x, float y, float w, float h) {
	//あなたのコード
}
```

##マウス位置でループ回数を変えよう

###現在のマウス位置が入っている変数

| 項目 | 変数 | 値 |
|--- |---|---|
|X座標|mousex|0 から width -1|
|Y座標|mousey|0 から height -1|

###値の範囲を変える関数

```processing
map(value, start1, stop1, start2, stop2)
```

###マウスのX座標の値を1から10.9999...の範囲に変換

```processing
map(mouseX, 0, width, 1, 11)
```

###float（浮動小数点）をint（整数）に変換

```processing
int(value)
```

###マウスのX座標の値を1から10の範囲に変換

```processing
  int num = int(map(mouseX, 0, width, 1, 11));
```

###マウス位置でループ回数を変える

```processing
  int num = int(map(mouseX, 0, width, 1, 11));
  float logoSize = width / num;
  // ロゴを描く
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
	    //ここに繰り返し実行するコードを書きます
    }
  }
```

