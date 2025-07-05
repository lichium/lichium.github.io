#import "/lib/lib.typ": *
#show: schema.with("page")

#title[匀磁场中双杆恒力模型]
#date[20240301]
#author[Lithium]

#figure(image("2024-03-02-pic.jpg"),
  caption: [
    pic
  ]
)

= 题目
两光滑无限长导电轨道间距为$L$，置于垂直于两导轨的无限大磁场中，磁感应强度为$B$，相同导体棒$a$、$b$垂直放置在导轨上且$a$在$b$左侧，电阻均为$R$，质量均为$m$，初始时均静止。现给$b$施加恒力$F$方向向右，试求两导体棒$v (t)$。

= 解
导体棒运动切割磁感线产生动生电动势 $epsilon = B v L$，回路中电流：

$ I = frac(epsilon_b - epsilon_a, 2 R) = frac(B L (v_b - v_a), 2 R) $

单个导体棒受到安培力：

$ F_安 = B I L = frac(B^2 L^2 (v_b - v_a), 2 R) $

列出两导体棒动力学方程：

$ a : quad m frac(upright(d) v_a, upright(d) t) = frac(B^2 L^2 (v_b - v_a), 2 R)\
b : quad m frac(upright(d) v_b, upright(d) t) = F - frac(B^2 L^2 (v_b - v_a), 2 R) $

两式作差并整理：

$ frac(upright(d), upright(d) t) (v_b - v_a) + frac(B^2 L^2, m R) (v_b - v_a) = F / m #h(2em) (*) $

这是一个一阶非齐次线性微分方程。对于一般形式：

$ frac(d y, d x) + P (x) y = Q (x) $

有通解：

$ y = e^(- integral P (x) d x) [integral Q (x) e^(integral P (x) d x) d x + C] $

则$*$式的解为：

$ v_b - v_a = frac(R F, B^2 L^2) (1 - e^(- frac(B^2 L^2 t, m R))) $

根据动量定理：

$ F t = m v_a + m v_b\
v_a + v_b = frac(F t, m) $

联立$1$式、$2$式，解得：

$ v_a = frac(F t, 2 m) - frac(R F, 2 B^2 L^2) (1 - e^(- frac(B^2 L^2 t, m R)))\
v_b = frac(F t, 2 m) + frac(R F, 2 B^2 L^2) (1 - e^(- frac(B^2 L^2 t, m R))) $

#figure(image("2024-03-02-vt.jpg"),
  caption: [
    $v - t$图象
  ]
)

= 分析

高中课内讲这题，也许会讲：两导体棒先变加速，后匀加速。观察发现，当$t$很大时，$v$的第二项确实几乎不发生变化，加速度接近定值$frac(F, 2 m)$。所以一定程度上可认为导体棒最终近似做匀加速直线运动。
