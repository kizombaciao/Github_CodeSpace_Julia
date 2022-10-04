(sqrt ∘ +)(3, 6)

(sqrt ∘ abs ∘ +)(-3, -6, -7)

[-3, -6, -7] |> sum |> abs |> sqrt

[-4, 9, -16] .|> abs .|> sqrt

["a", "list", "of", "strings"] .|> [uppercase, reverse, titlecase, length]

"list" |> reverse |> titlecase