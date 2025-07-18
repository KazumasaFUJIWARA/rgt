
# RGT 卒業論文スタイルパッケージ

## 概要

`rgt` パッケージは、龍谷大学の先端理工学部数理・情報科学課程における卒業論文のフォーマットを支援するためのカスタムスタイルパッケージです。

## 対応フォーマット

このリポジトリには以下の2つのバージョンが含まれています：

- **TeX版** (`tex/rgt.sty`): LaTeX/XeLaTeX用のスタイルファイル
- **Typst版** (`typst/rgt.typ`): Typst用のスタイルファイル

## 特徴

- **事前定義された変数**: 大学名、学部、課程、年度、学籍番号、指導教員情報など、文書固有の詳細を簡単に設定可能
- **カスタム環境**: 定義、定理、命題、補題、系、註などの数学的な内容を記述するための環境を提供
- **一貫したフォーマット**: タイトル、概要、内容を自動でフォーマットし、適切なスタイリングを提供
- **目次の作成**: シンプルなコマンドで目次を作成可能

## 使用方法

詳細な使用方法については、各フォーマットのサンプルドキュメントを参照してください：

- **TeX版**: [`doc/test.tex`](doc/test.tex) - XeLaTeXでの使用例
	- 対応PDF: [`doc/test.pdf`](doc/test.pdf)
- **Typst版**: [`typst/document_typst.typ`](typst/document_typst.typ) - Typstでの使用例
	- 対応PDF: [`typst/document_typst.typ`](typst/document_typst.pdf)

## インストール

### TeX版
1. `tex/rgt.sty` ファイルをプロジェクトフォルダか、TEXMFフォルダに配置
2. LaTeX文書のプリアンブルで `\usepackage{rgt}` を追加

### Typst版
1. `typst/rgt.typ` ファイルをプロジェクトフォルダに配置
2. Typst文書で `#import "rgt.typ": *` を追加

## ライセンス
このパッケージの無断転載を禁止します。
