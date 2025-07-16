// RGT (Ryukoku Graduation Thesis) Typst Package
// 龍谷大学先端理工学部数理・情報科学課程卒業論文用スタイルファイル
//
#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)

#let thmcounter = counter("theorem")

#let thesis(
	title: none,
	academic-year: none,
	author: none,
	supervisor: none,
	affiliation: none,
	abstract: none,
	font: none,
	doc,
) = {
	set page(
		margin: 20mm,
		paper: "a4",
	)
	set text(
		size: 12pt,
	)
	align(center)[
		#academic-year 年度 特別研究論文\
		#text(18pt, title)
	]
	align(right)[
		#affiliation.university
		#affiliation.department
		#affiliation.course
		#h(0.15cm)
		#v(-0.3cm)
		#table(
			columns: 2,
			stroke: none,
			align: (right, left),
				[#author.id:],
				[#author.family-name #author.given-name],
				[指導教員:],
				[#supervisor.family-name #supervisor.given-name],
		)
	]
	align(center)[
		*概要*
	]

	abstract

	pagebreak()

	v(2.5cm)

	align(center)[
		#academic-year 年度 特別研究論文 \ \
		#text(25pt, strong(title))
		#v(1fr)
		#align(center)[
			#affiliation.university
			#affiliation.department
			#affiliation.course
			#h(0.15cm)
			#v(-0.3cm)
			#table(
				columns: 2,
				stroke: none,
				align: (right, left),
					[#author.id:],
					[#author.family-name #author.given-name],
					[指導教員:],
					[#supervisor.family-name #supervisor.given-name],
			)
		]
	]
	pagebreak()

	set heading(numbering: "1.")

	show outline.entry.where(
		level: 1
	): set block(above: 1.5em)

	// level 1ヘッダーの更新時のみ変更
	show heading.where(level: 1): it => {
		counter(math.equation).update(0)
		counter(figure.where(kind: image)).update(0)
		counter(figure.where(kind: table)).update(0)
		counter(figure.where(kind: raw)).update(0)
		thmcounter.update(0)
		it
	}


	set math.equation(
		numbering: num =>
			numbering("(1.1)", counter(heading).get().first(), num),
			number-align: bottom
	)

	set figure(
		numbering: num =>
			numbering("1.1", counter(heading).get().first(), num)
	)

	// 引用文の左に線を引く
	set quote(block: true)
	show quote.where(block: true): block.with(
		stroke: (left: 2pt + blue, rest: none),
	)

	show link: set text(fill: blue)

	// まず「3バッククォート以上なら必ず block 表示」に
	set raw(block: true)

	// GPT ライトテーマ風
	show raw.where(block: true): block.with(
		fill: rgb("#f6f8fa"),
		inset: (x: 12pt, y: 8pt),
		radius: 4pt,
	)

	// インラインコードも色を合わせたい場合
	show raw.where(block: false): box.with(
		fill: rgb("#f6f8fa"),
		inset: (x: 3pt, y: 1pt),
		radius: 3pt,
	)

	outline(
		title: "目次",
	)

	pagebreak()
	counter(page).update(1)
	set page(numbering: "1")
	doc
}

#let thetheoremcounter = {
	thmcounter.step()
	context str(counter(heading).get().first()) + "." + context thmcounter.display()
}

#let definition(title: none, it) = context {

	block(
		radius: 4pt,
		inset: 10pt,
		fill: silver,
		width: 100%,
	)[
		#strong("定義" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let theorem(title: none, it) = context {

	block(
		radius: 4pt,
		inset: 10pt,
		width: 100%,
		stroke: (2pt + black),
	)[
		#strong("定理" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let proposition(title: none, it) = context {

	block(
		radius: 4pt,
		inset: 10pt,
		fill: luma(250),
		width: 100%,
		stroke: (2pt + gray),
	)[
		#strong("命題" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let lemma(title: none, it) = context {

	block(
		radius: 4pt,
		inset: 10pt,
		width: 100%,
		stroke: (4pt + silver),
	)[
		#strong("補題" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let corollary(title: none, it) = context {

	block(
		radius: 4pt,
		inset: 10pt,
		width: 100%,
		stroke: (2pt + silver),
	)[
		#strong("系" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let remark(title: none, it) = {
	block(
		inset: 10pt,
		width: 100%,
		stroke: (left: 2pt + black),
	)[
		#strong("註" + thetheoremcounter + ": " + title)\
		#v(-0.3em)
		#it
	]
}

#let example(title: none, it) = {
	block(
		inset: 10pt,
		width: 100%,
		stroke: (left: 2pt + gray),
	)[
		#strong("例" + thetheoremcounter + ":" + title)\
		#v(-0.3em)
		#it
	]
}
