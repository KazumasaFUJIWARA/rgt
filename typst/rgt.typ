// RGT (Ryukoku Graduation Thesis) Typst Package
// 龍谷大学先端理工学部数理・情報科学課程卒業論文用スタイルファイル

// カウンターの設定
#let statement-counter = counter("statement")
#let equation-counter = counter("equation")

// ページ設定
#set page(
  margin: 2.5cm,
  numbering: "1",
)

// 変数設定コマンド
#let nendo(year) = { academic-year = year }
#let gakuseki-num(num) = { student-number = num }
#let daigaku(name) = { university = name }
#let gakubu(name) = { department = name }
#let gakka(name) = { course = name }
#let shidou-myouji(name) = { supervisor-first = name }
#let shidou-namae(name) = { supervisor-last = name }
#let myouji(name) = { name-first = name }
#let namae(name) = { name-last = name }
#let shokukai(name) = { post = name }

// 目次の設定
#let mokuji() = {
  pagebreak()
  align(center)[
    #text(size: 16pt, weight: "bold")[目次]
  ]
  outline(
    indent: auto,
    depth: 3,
  )
  pagebreak()
}

// 概要ページ
#let abstract(content) = {
  pagebreak()
  align(center)[
    #academic-year 年度 特別研究論文
  ]
  v(0.3cm)
  align(center)[
    #text(size: 14pt, weight: "bold")[#title]
  ]
  v(0.3cm)
  align(right)[
    #university #department #course
  ]
  align(right)[
    #student-number quad #name-first #name-last
  ]
  align(right)[
    指導教員 quad #supervisor-first #supervisor-last
  ]
  v(0.2cm)
  align(center)[
    #text(weight: "bold")[概要]
  ]
  v(0.3cm)
  content
  pagebreak()
}

// タイトルページ
#let make-title() = {
  pagebreak()
  align(center)[
    v(2.3cm)
    #academic-year 年度特別研究論文
    v(0.5cm)
    #text(size: 18pt, weight: "bold")[#title]
    v(10.5cm)
    #text(size: 12pt)[#university #department #course]
    v(0.7cm)
    #align(left: 0.47 * page.width)[#text(size: 14pt)[#student-number]]
    #align(right: 0.47 * page.width)[#text(size: 14pt)[#name-first #name-last]]
    v(0.2cm)
    #align(left: 0.47 * page.width)[#text(size: 14pt)[指導教員]]
    #align(right: 0.47 * page.width)[#text(size: 14pt)[#supervisor-first #supervisor-last]]
  ]
}

// 数学的環境の定義
#let definition(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "定義" } else { "定義: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
}

#let theorem(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "定理" } else { "定理: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
}

#let proposition(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "命題" } else { "命題: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
}

#let lemma(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "補題" } else { "補題: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
}

#let corollary(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "系" } else { "系: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
}

#let remark(title: none, body) = {
  statement-counter.step()
  let num = statement-counter.display()
  let title-text = if title == none { "註" } else { "註: " + title }
  block(
    fill: rgb("f0f0f0"),
    stroke: 1pt + black,
    inset: 0.5em,
    radius: 0.2em,
    [
      #text(weight: "bold")[#title-text #num]
      body
    ]
  )
} 
