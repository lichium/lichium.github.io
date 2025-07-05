#import "/lib/lib.typ": *
#show: schema.with("page")
#set math.equation(numbering: "(1)")
#title[抛物线蝴蝶定理的曲线系证法]
#date[20240907]
#author[Lithium]

= 定理
抛物线 $y^2 = 2 p x$ ，过点 $Q (q , 0)$ 有直线
$A C : x = m_1 y + q 、 B D : y = m_2 x + q$ 交抛物线于
$A （ 左 上 ） 、 B （ 右 上 ） 、 C （ 左 下 ） 、 D （ 右 下 ）$ ，
连接 $A D 、 B C$ 分别交 $x$ 轴于 $M 、 N$ ，则
$x_N / q = q / x_M = frac(Q N, Q M) = k_(A D) / k_(B C)$，
$S_(A D Q) / S_(B C Q) = frac(Q M^2, Q N^2)$ .


= 证明
过 $A 、 B 、 C 、 D$ 的曲线系可描述为：

$ lambda (y^2 - 2 p x) + mu (m_1 y + q - x) (m_2 y + q - x) = 0 $

令 $y = 0$ 可得该曲线系与 $x$ 轴交点满足的方程：

$ x^2 - 2 (lambda / mu p + q) x + q^2 = 0 $

设 $A D : x = t_1 y + r_1 ， B C : x = t_2 y + r_2$ ，则 $A D 、 B C$
构成的曲线系可表示为：

$ (t_1 y + r_1 - x) (t_2 y + r_2 - x) = 0 $

令 $y = 0$ ：

$ x^2 - (r_1 + r_2) x + r_1 r_2 = 0 $

比对 $(2) (4)$ 系数，显然 $r_1 r_2 = q^2$。再结合比例的性质可得：

$ r_1 / q = q / r_2 = frac(r_1 - q, q - r_2) $

即：

$ x_N / q = q / x_M = frac(Q N, Q M) $

令 $(1)$ 中 $x = q$ 得：

$ (lambda + mu m_1 m_2) y^2 - 2 lambda p q = 0 $

观察发现无关于 $y$ 的一次项，故 $A D 、 B C$ 与 $x = q$ 的交点关于 $x$
轴对称，记交点纵坐标绝对值为h，所以：

$ k_(A D) / k_(B C) = frac(h, Q M) \/ frac(h, Q N) = frac(Q N, Q M) $

班里巨佬都会了，只有属于蒟蒻的我才刚学😭
