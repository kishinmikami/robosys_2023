# robosys2023
[![test](https://github.com/kishinmikami/robosys_2023/actions/workflows/test.yml/badge.svg)](https://github.com/kishinmikami/robosys_2023/actions/workflows/test.yml)


## プラスコマンド
標準入力から読み込んだ数字の和を出力する.

## 使い方

```
$ seq 10 | ./plus
55

$ ./plus < numms
-2.2
```


## 平均コマンドに
標準入力から読み込んだ数字の平均を出力する.

## 使い方

```
$ ./ave 1 2 3 4 5
3.0
```

## 分散コマンドに
標準入力から読み込んだ数字の分散を出力する.

## 使い方

```
$ ./dispersion 1 2 3 4 5 6
2.9166666666666665
```

## インストール方法
githubがインストールされており, pythonの動く環境で以下のコマンドを入力し, リポジトリを手元にコピーする.
```
$ git clone git@github.com:kishinmikami/robosys_2023.git
```
コピーした後, 以下のコマンドを入力し, ディレクトリに移動する.
```
$ cd robosys2023
```

## 必要なソフトウェア
* Python
	* テスト済:ver.3.7～3.10

## テスト環境
プラスコマンド
* Ubuntu 20.04

平均コマンド, 分散コマンド
* Ubuntu 22.04.2 LTS

## ライセンス関連
プラスコマンド
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを本人の許可を得て自身の著作としたものです.
        * [ryuichiueda/my-slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

平均コマンド, 分散コマンド
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.


© 2023 Kishin Mikami
