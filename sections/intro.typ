#import "/globals.typ": *

= Recap from last time

---

#grid(
  rows: 2,
  row-gutter: 1em,
  [
    *Homophonic Substitution Ciphers*
    - 1:>0 mappings
    - English without spaces & punctuation
  ],
  [
    #block(width: 100%)[
      #align(center)[
        #figure(
          image("/img/example.png", width: 90%),
          caption: [Example of a homophonic substitution cipher. (Kambhatla et al., Findings 2023)],
        )
      ]
    ]
  ],
)

---

#grid(
  columns: 2,
  column-gutter: 1em,
  [
    *Causal LM*
    - Learns both cipher & plaintext
    - Reads left to right

    *Seq2seq*
    - Learns plaintext only
    - Bidirectional

    *Both suffer from $O(N^2)$ attention #emoji.face.sad*
  ],
  [
    #align(center)[
      #figure(
        image("/img/synth.png", width: 80%),
        caption: [SER on synthetic HS ciphers. (Kambhatla et al., Findings 2023)],
      )
    ]
  ],
)

---

= Standard Attention Computation

---

#grid(
  columns: 2,
  column-gutter: 6em,
  [
    *Rows (Queries)*
    - Token we are looking for

    *Columns (Keys)*
    - Token we are looking at

    *Values (Cells)*
    - Attention Score

    *Notice:* $(N times N) = N^2$
  ],
  [
    #align(center)[
      $"Cipher:" "X Y Z"$

      $X -> [Y, Z]$

      $Y -> [X, Z]$

      $Z -> [X, Y]$


      #figure(
        table(
          columns: 4,
          align: horizon,
          inset: 6pt,
          [     ], [*X*], [*Y*], [*Z*],
          [*X*], [$X->X$], [$X->Y$], [$X->Z$],
          [*Y*], [$Y->X$], [$Y->Y$], [$Y->Z$],
          [*Z*], [$Z->X$], [$Z->Y$], [$Z->Z$],
        ),
        caption: [Attention Weight Matrix $(N times N)$],
      )
    ]
  ],
)

