# 特別研究論文の内規を設計に取り込む worklog — 2026-10-04

ブランチ `main`。

## Outcome

特別研究論文の内容と体裁（内規）を、エージェント非依存の設計としてリポジトリに固定した。ルール本文の正本は README、テンプレート側はコメントで同趣旨を参照する形にした。

## Decisions

- 特定の `agent.md` だけに寄せない。利用エージェントが固定されていないため。
- 正本は `README.md` の「特別研究論文の内容と体裁」節。テンプレート／サンプルにもコメントを分散し、実装時の取り違えを防ぐ。
- worklog は md。内規の再掲ではなく、判断履歴だけを残す（jsonl は今回の用途に不要）。
- Web 引用のアクセス日は既存の `note = {Accessed: YYYY-MM-DD}` + `rgt.csl` 方針を内規として明文化。

## Changed files

- `README.md` — 内規正本とページ区分表
- `typst/rgt.typ`, `typst/document_typst.typ`, `typst/document_typst.bib`, `typst/rgt.csl`
- `tex/src/rgt.sty`, `tex/doc/test.tex`
- `WORKLOG-2026-10-04-thesis-rules.md` — 本ファイル

## Open

なし。
