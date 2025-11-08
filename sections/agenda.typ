#import "/globals.typ": *

= The papers

---

#grid(
  columns: 2,
  column-gutter: 2em,
  [
    *X-former Elucidator: Reviving Efficient Attention for Long Context Language Modeling*\
    Miao, et al., 2024

    *Transformers are RNNs: Fast Autoregressive Transformers with Linear Attention* \
    Katharopoulos, et al., 2020
  ],
  [
    *Long-Short Transformer: Efficient Transformers for Language and Vision*
    Zhu, et al., 2021

    *Rethinking Attention with Performers*\
    Choromanski, et al., 2021

    *Linformer: Self-Attention with Linear Complexity*\
    Wang, et al., 2020
  ],
)

---

== Why these papers?

*Efficient computation during training*
- Causal LM inference is fast

*Best methods from comparative study*
- We don't have time for them all
- Some are more inference focused

*Summary*
- We care about efficiency during training
- Inference for long cipher struggle due to lack of generalization on long ciphers
