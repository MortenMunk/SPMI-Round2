#import "/globals.typ": *

= Linformer

== Method

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
          caption: [Eigenvalue plots (Wang, et al., 2020)],
        )
      ]
    ]
  ],
)

---

// TODO: Theorem 2 image
