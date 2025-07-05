#import "/lib/lib.typ": *
#show: schema.with("page")
#set math.equation(numbering: "(1)")
#title[2024-03-02-匀磁场中电源加导体棒模型]
#date[20240302]
#author[Lithium]

#figure(image("pic.jpg"))

= 题目
磁感应强度$B$方向竖直，光滑平行导轨间距$L$置于水平面，连接电动势为$epsilon$内阻为$r$的电源，垂直导轨放置一根电阻为$R$的导体棒，初速度为$0$。试求$v (t)$。

= 解
列出 基尔霍夫回路电压方程和 动力学方程：

$ epsilon.alt = B L v + I (R + r) $
$ m frac(upright(d) v, upright(d) t) = B I L $

由(1)得：

$ I = frac(epsilon - B L v, R + r) $

代入(2)并整理：

$ frac(upright(d) v, upright(d) t) + frac(B^2 L^2, m (R + r)) v = frac(B L epsilon.alt, m (R + r)) $

解得：

$ v = frac(epsilon, B L) (1 - e^(- frac(B^2 L^2 t, m (R + r)))) $

#quote(block: true)[
一阶非齐次线性微分方程的通解参见#link("https://lichium.github.io/posts/2024-03-02-匀磁场中双杆恒力模型.html")[匀磁场中双杆恒力模型]
]

= 分析
观察发现，导体棒始终不会匀速运动，只不过当时间极长时，e指数项不断接近0，近似是匀速运动。

= 拓展
该模型可将电源换为电容、电阻、电感，又是很有意思的题。
