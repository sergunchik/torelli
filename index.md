---
title: Combinatorial non-abelian Torelli theorem
abstract: We prove that a (colored) trivalent graph can be recovered from (the polar dual of) the associated quantum Clebsch-Gordan polytope and that any isomorphism between such polytopes is induced by a unique properly defined isomorphism of underlying colored graphs.
author: Pieter Belmans, Sergey Galkin, Swarnava Mukhopadhyay
katex: True
---

To a graph $G$ with the set $V(G)$ of trivalent vertices
associate a vector space $S(G)$ with a basis $e(i)$ enumerated by
(non-oriented) edges of $G$,
and a polytope $P(G)$ there given as a convex hull of
the vectors 
\begin{equation}
p(v,s) = s(i) e(i) + s(j) e(j) + s(k) e(k) = ±e(i)±e(j)±e(k),
\end{equation}
where the edges $i,j,k$ are outgoing from a single vertex $v$
and $s(i),s(j),s(k)\in\{\pm1\}$ with $s(i)s(j)s(k)=1$.

Let us prove that the polytopes $P(G)$ to $P(G')$ can be mapped to each other
by a pair of (real) affine transformations
if and only if the graphs $G$ and $G'$ are isomorphic.

## Assumptions
The graph $G$ is said to be of principal series if it satisfies the following:

1. Every connected component of $G$ has at least $5$ trivalent vertices.

2. Graph $G$ has no loops.

3. Graph $G$ has no double edges.

4. Graph $G$ has no leaves.

## Algorithm/Lemma
Let $P = P(G)$ be a polytope in a real affine space $S = S(G)$
associated with a graph $G$ of principal series.
We will reconstruct the graph from the affine relations between the vertices of the polytope
(which we further call _rays_ to distinguish them from vertices of the graph).

0. The center of mass of all rays equals $0$.

1. [Principal Step] In the set of all semi-sums of all pairs of distinct rays
   record those that appear at least twice,
   i.e. record all the centers of the parallelograms that can be obtained
   as convex hulls of some pairs of diagonals.
   Claim: these are exactly the vectors $±e(i)$ for all (internal) edges $i$.
   So at this step we have reconstructed the set of (internal) edges of the graph.

2. Consider the Euclidean pairing in which these vectors $±e(i)$ form an orthonormal base.
   For every ray there are exactly $3$ coordinate axes $±e(i)$ that
   are not orthogonal to $p$. A triple of edges $i,j,k$ meet in a vertex of $G$ iff
   there exists at least one ray $p\in P$ non-orthogonal to all vectors $e(i),e(j),e(k)$.
   If there is one such ray, there are exactly four.
   So at this step we have reconstructed the sets of the edges and the vertices of the graph
   and the adjacency data between them. Equivalently we can say that the set
   of vertices of a graph is identified with the quotient-set of the set of rays,
   and the adjacency matrix between the vertices is given by the maximal value
   of the scalar products between the representative rays.

## The proof of correctness.

First two assumptions imply that all vectors $p(v,s)$ are distinct.

Second assumption implies that each vector $p(v,s)$ in the basis $\{e(i)\}$
is a permutation of $(±1,±1,±1,0,0,...,0)$.
So all vectors $p(v,s)$ are equidistant from $0$ with respect
to the Euclidean norm in which the basis $e(i)$ is orthonormal.
This implies that vectors $p(v,s)$ are convex independent,
thus their set coincides with the set of the rays (vertices of the polytope $P(G)$),
call it further by $R$.
The set $R$ of rays is partitioned into quadruples
$\{ p(v,s) \}$ enumerated by vertices $v \in V(G)$.
If $x,y,z,w$ are four distinct admissible sign assignments then
there is a linear relation
\begin{equation}
p(v,x) + p(v,y) + p(v,z) + p(v,w) = 0,
\end{equation}
so the center of mass of the rays in any such quadruple is $0$,
hence the center of mass of all the rays is $0$.
Step 0 is proved.

If a vertex $v\in V(G)$ is incident to edges $i,j,k$ then the $6$ semi-sums of two vectors
from a quadruple are equal to $±e(i),±e(j),±e(k)$.
So if $i$ is an (internal non-loop) edge connecting vertices $v$ and $v'$
there are at least two distinct ways to write $e(i)$ as a semi-sum of two vectors:
$2 e(i) = p(v,x) + p(v,y) = p(v',z') + p(v',w')$,
and similarly $-2 e(i) = p(v,z) + p(v,w) = p(v',x') + p(v',y')$.
To prove the claim of Step 1 it remains to show that no other vector
have two representations as a semi-sum.

Now let us show that the first assumption implies that
if for some vertices $u,u',v,v' \in V(G)$ and signs $x,y,z,w$ there is a relation
\begin{equation}
p(u,x) + p(u',y) = p(v,z) + p(v',w)
\end{equation}
then either $u=u', v=v'$ or $\{u,u'\} = \{v,v'\}$.
For each vertex consider the parity of times it appears in a relation.
The relation implies that for every edge $i$ the parities of the adjacent vertices
are equal. So the assigned parities of vertices are constant in every connected component.
Since we have only four terms in a relation, number of odd vertices is at most four,
so in every connected component with at least 5 vertices all vertices are even.

So either $u=u'=v=v'$, but then six semi-sums are all distinct,
or there are two vertices and each appears in the relation twice:
either each vertex appears only on one side of the equation
or both vertices appear on both sides.

If each vertex appears on its own side then we have an equation $±e(i) = ±e(j)$
where $i$ is an edge adjacent to $u$ and $j$ is an edge adjacent to $v$,
thus $i=j$ and vertices $u,v$ are adjacent to each other.

Finally, the equation
\begin{equation} \label{ssd}
p(v,x) + p(v',w) = p(v,y) + p(v',z)
\end{equation}
is equivalent to $p(v,x) - p(v,y) = p(v',z) - p(v',w)$
(where the differences are zero iff the summands on both sides are identical).
For every vertex $v$ with edges $i,j,k$
the $12$ semi-differences are equal to $±e(i)±e(j),±e(i)±e(k),±e(j)±e(k)$.
So if for two distinct vertices $v,v' \in V(G)$
and some sign choices $x,y,z,w$ there holds a relation \ref{ssd},
then vertices $v$ and $v'$ would be connected by at least two edges,
contradicting to the third assumption.

Now Step 1 is justified and Step 2 is straightforward.


## Colorings

A *colored graph* is a pair $(G,c)$ of a graph $G$ and a coloring function
$c : V(G) \to \{\pm1\}$. Define isomorphisms between colored graphs $(G,c)$
and $(G',c')$ as pairs $(f,g)$ of as graph isomorphism $f: G \to G'$
and a function $g : E(G') \to \{\pm1\}$ such that for any
vertex $v\in V(G)$ with edges of $f(v)$ denoted $i',j',k'$ there holds
$c'(fv) / c(v) = g(i') g(j') g(k')$. In particular if $f$ is the identity
and we regard the colorings $c,c'$ as $0$-chains, then the respective morphisms
is the set of $1$-chains whose boundary is the ratio of $c'$ and $c$,
so the set of automorphism is principal homogeneous over the first homology group
$H_1(G,\{\pm1\})$. The composition of $(f,g) : (G,c) \to (G',c')$
and $(f',g') : (G',c') \to (G'',c'')$ is $(f'\circ f, g'')$
where $g''(i'') := g'(i'') \cdot \prod_{f'(i') = i''} g'(i')$.

Generators for the groupoid of colored graphs can be chosen as morphisms
$(f,g) : (G,c) \to (G',c')$ 
with either $c = c' \circ f, g = 1$
or $f$ being identity and $g$ a boundary of a single edge.

Define $P(G,c)$ as the convex hull in $S(G)$ of rays $p(v,s)$ with $s(i) s(j) s(k) = c(v)$
(old definition corresponds to the constant coloring by $+1$).

Any isomorphism $(f,g): (G,c) \to (G',c')$
of colored graphs naturally induces an isomorphism 
$P(f,g) : P(g,c) \to P(G',c')$ of the associated convex polytopes.
For example, the generators of the first kind correspond to "permutations"
and the generators of the second kind correspond to linear transformations
that send $e(i)$ to $-e(i)$ for the chosen edge $i$ and preserve all other basic vectors.

### Colored combinatorial non-abelian Torelli theorem
Association $P$ is a full functor from the groupoid of colored
graphs of principal series to the groupoid of convex polytopes
and affine isomorphisms. That is, any affinely linear isomorphism
between polytopes $P(G,c)$ and $P(G',c')$ is induced by a uniquely defined
isomorphism of colored graphs.


The steps of the algorithm above can be applied without modifications.

Then for any of $2^{\dim S}$ bases of $S$ with given coordinate axes $±e(i)$
the coloring of the vertices of the graph is well- and uniquely defined
by the parity of the number of minus signs in the coordinates of the respective rays
in the given basis.
A unique choice of signs corresponds to the original coloring, all other choices
produce homologically equivalent colorings, unique invariants of colorings
are total parity of vertices in every leafless connected component.
It suffices to notice that the change of the sign
of a single vector in the base corresponds to simultaneous
change of the color of the two vertices adjacent to this edge.


## Algebro-geometric interpretation
