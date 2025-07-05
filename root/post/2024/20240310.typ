#import "/lib/lib.typ": *
#show: schema.with("page")
#set math.equation(numbering: "(1)")
#title[缓慢缩短摆长的单摆]
#date[20240310]
#author[Lithium]

现有单摆$theta = theta_0 cos (omega t)$，现缓慢拉动绳子使摆长缩短。
已知：

$ theta = theta_0 cos (omega t) $

对时间求导得角速度：

$ dot(theta) = - theta_0 omega sin (omega t) $

单摆机械能：

$ E = - m g l cos theta_0 = 1 / 2 m g l theta_0^2 - m g l $

法向动力学方程：

$ T - m g cos theta = m l dot(theta)^2 $

上式移项，不难得出一个周期内绳上拉力平均值：

$ ⟨T⟩ = m g ⟨cos theta⟩ + m l ⟨dot(theta)^2⟩ = m g ⟨1 - 1 / 2 theta^2⟩ + m l ⟨dot(theta)^2⟩ $

一个周期内 $theta^2$平均值：

$ ⟨theta^2⟩ = 1 / T integral_0^T theta_0^2 cos^2 (omega t) thin d t = 1 / 2 theta_0^2 $

一个周期内$dot(theta)^2$平均值：

$ ⟨dot(theta)^2⟩ = 1 / T integral_0^T theta_0^2 omega^2 sin^2 (omega t) thin d t = 1 / 2 omega^2 theta_0^2 = frac(theta_0^2 g, 2 l) $

则绳上张力平均值（到此解决2024年中科大少创班初试物理倒数第二题第一问）：

$ ⟨T⟩ = m g (1 + 1 / 4 theta_0^2) $

一个周期内绳上张力做功的大小等于单摆能量变化量。因 $upright(d) l$
为正代表绳子伸长，此处绳子缩短，故冠负号（到此解决第二问）。

$ - ⟨T⟩ upright(d) l & = upright(d) E\
- m g (1 + 1 / 4 theta_0^2) upright(d) l & = upright(d) (1 / 2 m g l theta_0^2 - m g l)\
- m g (1 + 1 / 4 theta_0^2) upright(d) l & = m g l theta_0 upright(d) theta_0 + 1 / 2 m g theta_0^2 upright(d) l - m g upright(d) l $

化简得：

$ 3 / 4 theta_0^2 upright(d) l + theta_0 l upright(d) theta_0 = 0 $

即：

$ 3 / 4 frac(upright(d) l, l) + frac(upright(d) theta_0, theta_0) = 0 $

移项积分得（到此解决第四问）：

$ theta_0 l^(3 / 4) = c o n s t $
