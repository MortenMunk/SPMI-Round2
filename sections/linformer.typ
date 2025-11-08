#import "/globals.typ": *

= Linformer
---

*Disclaimer*: Math is heavily simplified for understanding #emoji.warning

*Standard attention*\
$"attention"("Q", "K", "V") = underbrace(
  "softmax"(("QK"^T)/(sqrt(d))),
  P
)V$

*Claim:* Attention matrix is low-rank
- It can be represented by a smaller matrix

For any $Q,K,V$ exists a low-rank matrix $tilde(P)$ where:
- $tilde(P)$ has minimal error
- $tilde(P)$ has low-rank (fewer dims/features)


#pause *I will skip mathematical proof, and show empirical proof #emoji.warning*
---


#grid(
  rows: 2,
  row-gutter: 2em,
  [
    Eigenvalue index
    - Top 128 eigenvalues are most important
    - Trailing 384 eigenvalues are not so important
  ],
  [
    #block(width: 100%)[
      #align(center)[
        #figure(
          image("/img/lin.png", width: 60%),
          caption: [RoBERTa, IMDB & Wiki103 (Wang, et al., 2020)],
        )
      ]
    ]
  ],
)

---

#grid(
  columns: (60%, 40%),
  column-gutter: 2em,
  [
    *Similar to standard transformer*
    - Notice projections!

    $"softmax"(("QK"^T)/(sqrt(d)))V -> "softmax"((Q(E_(K)K)^T)/(sqrt(d)))E_(V)V$

    *$n times n = O(n^2)$*
    - inefficient!

    *$n times k = O(n k)$*
    - Better because $k << n$
  ],
  [
    #figure(
      image("/img/lin2.png", width: 70%),
      caption: [(Wang, et al., 2020)],
    )
  ],
)



