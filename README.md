# 三角関数コマンド

標準入力から読み込んだ角度の大きさをsin,cos,tanの順で関数を出す。

## 概要

- このプロジェクトは何をするものか？
角度を入力するとその角度に対応する三角関数（sin,cos,tan）の値を計算するpythonツールです。
- なぜこのプロジェクトが必要なのか？
数学的な計算を簡単に自動化するために必要。特に科学的な計算やエンジニアリングにおいて便利。
- 主な機能は何か？
角度を入力して、その角度のsin,cos,tanを計算し、表示する。

## インストール方法

以下の手順でプロジェクトをローカル環境にインストールしてください。

```bash
リポジトリをクローン
git clone https://github.com/nozakirikuto2/tri_functions.git

ディレクトリに移動
cd repository

依存関係をインストール
pip install -r requirements.txt```

## 必要なソフトウェア
- Python
   - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 22.04 LTS

## 使い方

実行方法の例

・関数を一つだけ出したいとき
```echo 数字 | ./functions```

・関数を複数だしたいとき(３つ出すとき)
```echo -e "数字\n数字\n数字\n" | ./functions```

## サンプル

サンプルコード


import math
import sys


for line in sys.stdin:
    line = line.strip()
    if not line:
        continue

    try:
        angle_deg = float(line)
        x = angle_deg

    except ValueError:        
        continue

    angle_radians = math.radians(x)
    y = angle_radians

    sin = round(math.sin(y), 5)
    cos = round(math.cos(y), 5)

    angle_radians = math.radians(x)
    y = angle_radians

    sin = round(math.sin(y), 5)
    cos = round(math.cos(y), 5)

    if cos == 0:
        tan = "無限大"
    else:
        tan = round(math.tan(y), 5)

    print(f"角度: {x}度")
    print(f"sin({x}) = {sin}")
    print(f"cos({x}) = {cos}")
    print(f"tan({x}) = {tan}")
    print()


## ライセンス

このプロジェクトはMITライセンスのもとで公開されています。

## 貢献

貢献方法は以下の通りです。

1.フォークする。
2.新しいブランチを作成する。(git checkout -b feature/YourFeature)
3.コードをコミットする。(git commit -m 'Add some feature')
4.プッシュする。(git push origin feature/YourFeature)
5.プルリクエストを作成する。

## クレジット
(使用したライブラリや貢献者の名前を記す。)
・使用したライブラリ:
	mathモジュールとsysモジュール
・貢献者
	Rikuto Nozaki

- このソフトウェアパッケージは、３条項BSDライセンスの下、再分布および使用が許可されています。
- © 2024 Rikuto Nozaki

DuC

