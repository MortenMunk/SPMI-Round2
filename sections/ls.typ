#import "/globals.typ": *

= Long Short Transformer
---

*Linear complexity from dual attention*

Short term (local window)
- Fine-grained local correlations
- Divide input sequence into $w$ sized segments
- Sliding window looks at home segment and $w/2$ tokens on both sides
- Fixed size keeps attention $O(N)$

Long range (dynamic projection)
- Distant correlations across entire sequence
- Dynamic Projection P decides which keys/values are important to keep
- P creates low-rank version of K and V
- Low-rank contains fixed r summary points

---

*Aggregation of attention*
Final output is calculated at every head
- Query looks at concatenation of global and local keys/values

*Scale mismatch*
Bias towards short term due to larger values
- Solved with DualLN normalization technique

Runtime depends on sequence length N and summary points r
- Hence linear runtime $O(N)$

