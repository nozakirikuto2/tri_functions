# 三角関数コマンド

標準入力から読み込んだ角度の大きさをsin,cos,tanの順で関数を出す。

## 概要

- このプロジェクトは何をするものか？:
角度を入力するとその角度に対応する三角関数（sin,cos,tan）の値を計算するpythonツールです。
- なぜこのプロジェクトが必要なのか？:
数学的な計算を簡単に自動化するために必要。特に科学的な計算やエンジニアリングにおいて便利。
- 主な機能は何か？:
角度を入力して、その角度のsin,cos,tanを計算し、表示する。

## インストール方法

以下の手順でプロジェクトをローカル環境にインストールしてください。


リポジトリをクローン
git clone https://github.com/nozakirikuto2/tri_functions.git

- ディレクトリに移動

cd try

## 必要なソフトウェア

- Python
   - テスト済みバージョン: 3.7~3.10

## テスト環境

- Ubuntu 22.04 LTS

## 実行方法

実行方法の例

- 関数を一つだけ出したいとき

```echo 整数 | ./functions```

- 関数を複数だしたいとき(３つ出すとき)

```echo -e "整数\n整数\n整数\n" | ./functions```

## クレジット

(使用したライブラリや貢献者の名前を記す。)
- 使用したライブラリ:
	mathモジュールとsysモジュール
- 貢献者:
	Rikuto Nozaki

## ライセンスと著作権
- このソフトウェアパッケージは、３条項BSDライセンスの下、再分布および使用が許可されています。
- © 2024 Rikuto Nozaki

DuC

