---
title: 卒論執筆サンプル（pandoc 版）
academic-year: 2023
student-number: a23036
myouji: 藤原
namae: 和将
supervisor-myouji: 藤原
supervisor-namae: 和将
post: 准教授
article-type: 特別研究論文
toc: true
abstract: |
  本書は, 卒業論文の書き方について概説したものである.
  pandoc + rgt.sty 経路で, Markdown から PDF を生成できることを示す.
---

# はじめに

卒業論文の執筆方法について述べる. Markdown から `pandoc` 経由で
PDF を生成する.

- 箇条書きもそのまま使える
- **強調** や *斜体* もそのまま
- 脚注 [^1] も可

[^1]: 脚注はこのように書く.

# 数式

インライン数式は $a^2 + b^2 = c^2$, ディスプレイ数式は

$$\int_0^\infty e^{-x^2}\,dx = \frac{\sqrt{\pi}}{2}.$$

# 註 (rgt 環境を使う例)

通常の本文はこのように書く.

::: {.remark title="補足"}
fenced div を使うと rgt.sty の `Remark` 環境に展開される.
タイトル引数は `title="..."` で渡す.
:::

タイトルを省略することも可能:

::: {.remark}
タイトル無しの註.
:::

生の LaTeX をそのまま書いても通る:

\begin{Definition}[文]
文とは, 終止符で終了する言葉の繋がりである.
\end{Definition}

# ビルド方法

```
pandoc example.md -o example.pdf \
  --template=../pandoc/rgt.latex \
  --lua-filter=../pandoc/rgt-env.lua \
  --pdf-engine=xelatex \
  -V rgt-sty=../src/rgt
```
