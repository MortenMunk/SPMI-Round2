#import "/globals.typ": *

= Performer
---

#grid(
  rows: 2,
  row-gutter: 2em,
  [
    *FAVOR+:* Fast Attention Via positive Orthogonal Random Features

    Linformer compresses - Performer approximates

    Left side (Standard):
    - Each key looks at every other key $O(L^2)$
    - Exponential similarity $e^(Q K^T)$
      - Grows positively/negatively based on similarity
  ],
  [
    #block(width: 100%)[
      #align(center)[
        #figure(
          image("/img/performer.png", width: 60%),
          caption: [(Choromanski, et al., 2021)],
        )
      ]
    ]
  ],
)

---


#grid(
  rows: 2,
  row-gutter: 2em,
  [
    Right side (Performer):
    - Kernel trick with random features $phi(Q) dot phi(K) approx e^(q_i dot k_j)$
    - Same exponential similarity but smaller matrices

    $phi(Q)(phi(K)^T V) -> (L times r) times (r times d) = O(L r)$
    - $r$ parameter determine number of directions to mimic similarites
      - Large $r$ = more accurate, but slower
  ],
  [
    #block(width: 100%)[
      #align(center)[
        #figure(
          image("/img/performer.png", width: 60%),
          caption: [(Choromanski, et al., 2021)],
        )
      ]
    ]
  ],
)
