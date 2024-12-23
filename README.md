
# RGT LaTeX パッケージ

## 概要

`rgt` パッケージは,
龍谷大学の先端理工学部数理・情報科学課程における
卒業論文のフォーマットを支援するためのカスタム LaTeX パッケージです.

## 特徴

- **事前定義された変数**：大学名、学部、課程、年度、学籍番号、指導教員情報など、文書固有の詳細を簡単に設定可能。
- **カスタム環境**：定義、定理、命題、補題、系、註などの数学的な内容を記述するための環境を提供。
- **一貫したフォーマット**：タイトル、概要、内容を自動でフォーマットし、適切なスタイリングを提供。
- **目次の作成**：シンプルなコマンドで目次を作成可能。

## インストール

1. この `rgt.sty` ファイルをプロジェクトフォルダか,
TEXMFフォルダに配置してください.
2. LaTeX 文書のプリアンブルで `\usepackage{rgt}` を追加してください.
3. 事前定義された変数を設定し、カスタムコマンドを使用して文書を作成します.

## 使用方法

### 1. 事前定義された変数

以下のカスタムコマンドを使用して,
文書の基本情報を設定します.
これらの変数は, 文書の最初に設定してください.

```latex
\Nendo{2024}          % 学年度
\GakusekiNum{1234567} % 学籍番号
\Daigaku{龍谷大学}    % 大学名
\Gakubu{先端理工学部} % 学部
\Gakka{数理・情報科学課程} % 課程
\Myouji{山田}          % 自分の苗字
\Namae{太郎}          % 自分の名前
\ShidouMyouji{佐藤}   % 指導教員の苗字
\ShidouNamae{次郎}    % 指導教員の名前
```

### 2. カスタム環境

数学的な内容を記述するための以下のカスタム環境が用意されています。

- `Definition`（定義）
- `Theorem`（定理）
- `Proposition`（命題）
- `Lemma`（補題）
- `Corollary`（系）
- `Remark`（註）

例:

```latex
\begin{Theorem}[ピタゴラスの定理]
直角三角形の斜辺の長さの二乗は、他の二辺の長さの二乗の和に等しい。
\end{Theorem}
```

### 3. 目次の作成

目次を自動的に生成するには、以下のコマンドを使用します。

```latex
\Mokuji
```

### 4. タイトルと概要ページ

タイトルページと概要を作成するためのカスタムコマンドも提供されています。

```latex
\maketitle   % タイトルページの生成
\begin{abstract}
ここに概要を記述します。
\end{abstract}
```

## ライセンス
このパッケージの無断転載を禁止します.
