{-
Let \(f : G \to \mathbb{R}^n\) be differentiable at \(\bm{a} \in G \subset \mathbb{R}^n\).
If \(d_{\bm{a}} f : \mathbb{R}^n \to \mathbb{R}^n\) is a bijection, then there exist neighbourhoods
\(U_h (\bm{a}) \subset G\), \(V_k (f (\bm{a})) \subset \mathbb{R}^n\), and a function
\(g : V_k \to U_h\) such that $g$ is differentiable at $f(\bm{a})$; and for all \(\bm{v} \in V_k\),
\(\bm{u} \in  U_h\),

    \[g(f(\bm{u})) = \bm{u},\ \ \ \ f(g(\bm{v})) = \bm{v} \]

Remark: In the context of the quote, $d_{\bm{a}} f$ denotes the differential of $f$ in $\bm{a}$.  The notation
$U_r(x)$ is used to denote the set of points that are within a distance less than $r$ to $x$ ($r$ > 0).
-}



-- 2a: What is the type of $d$?
data G
data Rn
d :: G -> (G->Rn) -> (Rn -> Rn)

-- 2b: What are the types of $h$ and $k$?
type RPos = Double -- with the side condition ">0"
h, k :: RPos

-- 2c: What are the types of $U$ and $V$?
bigU, bigV :: RPos -> Rn -> Pow G

-- 2d: There seems to be an inconsistency between the types of $U$ and $V$ when they are introduced and their use in the following (in the types of \(g, \bm{u}, \bm{v}\)).  What is the inconsistency?  How can you fix it?
{-
They are defined with the type as in 2c, but when used they seem to have type |U, V :: RPos -> Pow G|.
The number of arguments the inconsistency.
To fix it the typing of |g| the |a| in scope should be used as follows:
g_a :: V_k (f(a)) -> U_h (a)

This dependent type is beyond what Haskell can express (and it seems to be beyond what the authors of the quote can express as well)!
-}

----------------
-- Helpers:

data Pow a -- powerset of a == the set of all subsets of a
[d,h,k,bigU,bigV] = undefined
