-- Convert fenced divs with rgt environment classes to LaTeX.
--   ::: {.remark title="補足"}
--   本文…
--   :::
-- -> \begin{Remark}[補足] 本文… \end{Remark}

local env_map = {
  definition  = "Definition",
  theorem     = "Theorem",
  proposition = "Proposition",
  lemma       = "Lemma",
  corollary   = "Corollary",
  remark      = "Remark",
}

function Div(el)
  if FORMAT ~= "latex" then return nil end
  for _, cls in ipairs(el.classes) do
    local env = env_map[cls:lower()]
    if env then
      local title = el.attributes.title or ""
      local opt = (title ~= "") and ("[" .. title .. "]") or ""
      local open  = pandoc.RawBlock("latex", "\\begin{" .. env .. "}" .. opt)
      local close = pandoc.RawBlock("latex", "\\end{" .. env .. "}")
      el.content:insert(1, open)
      el.content:insert(close)
      return el.content
    end
  end
end
