#import "/lib/lib.typ": *
#show: schema.with("page")

#title[几何光学简单梳理]
#date[20240317]
#author[Lithium]

= 笛卡尔符号法则
- 正方向：光线由左向右传播为正。
- 线量规定：以#underline[光学元件顶点为原点，左负右正，下负上正];。
- 角量规定：从#underline[法线或光轴算起];，按#underline[小于90°方向旋转，顺时针为正，逆时针为负。]
  其中光轴与法线夹角#underline[从光轴转到法线。]
- 单个字母表示的量有正负，符合上述符号法则。图中标记的量冠正符号后，均非负。代入具体数据时，用数据替换相应单个字母，且数据应符合上述符号法则。

= 阿贝不变式
#image("2024-03-17-optics.png",width: 90%) 傍轴小角度：

$ sin theta = theta ， tan theta = theta $

折射定律：

$ - n i = - n' i' $

外角关系：

$ - i = - u + phi.alt ， - i' = phi.alt - u' $

代入：

$ (n ' - n) phi.alt = n' u' - n u $

正弦：

$ phi.alt = h / r ， - u = frac(h, - s) ， u' = frac(h, s') $

代入得：

$ #box(stroke: black, inset: 3pt, [$ frac(n', s') - n / s = frac(n' - n, r) = Phi $]) $

= 光焦度
光学系统固有特征，表示聚光本领。单位：屈光度($D$)，即 $m^(- 1)$。

$ Phi = frac(n' - n, r) $

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([$Phi > 0$], [$Phi < 0$],),
    table.hline(),
    [汇聚作用], [发散作用],
  )]
  , kind: table
  )

- 多个#underline[紧挨];折射面系统的光焦度，是各折射面光焦度之和：

$ Phi = Sigma Phi_i $

解决薄透镜问题。

= 焦距
- 物方焦距，令 $s' = + infinity$：

$ f = - frac(n, n' - n) r = - n / Phi $

- 像方焦距，令 $s = - infinity$： 
$ f' = frac(n', n' - n) r = frac(n', Phi) $

= 高斯成像公式
$ frac(f', s') + f / s = 1 $

推导：阿贝不变式左右同除其右式。

= 横向放大率
$ beta = frac(y', y) = frac(s', n') \/ s / n = frac(n s', n' s) $

#figure(
  align(center)[#table(
    columns: 3,
    align: (auto,auto,auto,),
    table.header([$parallel beta parallel > 1$], [$parallel beta parallel < 1$], [$parallel beta parallel = 1$],),
    table.hline(),
    [放大像], [缩小像], [物像等大],
  )]
  , kind: table
  )

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([$beta > 0$], [$beta < 0$],),
    table.hline(),
    [像正立], [像倒立],
    [物像在球面同侧], [物像在球面异侧],
    [实物成虚像 或 虚物成实像], [实物成实像 或 虚物成虚像],
  )]
  , kind: table
  )

= 纵向放大率
描述物像位置变化相对快慢。

$ alpha = frac(d s', d s) = beta^2 frac(n', n) = frac(s'^2, n') \/ s^2 / n = frac(n s'^2, n' s^2) > 0 $

= 角放大率
$ gamma = frac(tan u', tan u) = frac(u', u) = frac(s, s') $

= 三个放大率关系
横向放大率 $beta$，纵向放大率 $alpha$，角放大率 $gamma$有如下关系：

$ beta = alpha dot.op gamma $

= 亥姆霍兹-拉格朗日定理
由角放大率 $gamma$ 和横向放大率 $beta$，得：

$ n' y' u' = n y u $

可推广至多次成像：

$ n_1 y_1 u_1 = n_1' y_1' u_1' = n_2 y_2 u_2 = n_2' y_2' u_2' = n_k' y_k' u_k' $

= 球面镜反射
令$n' = - n$，可得球面镜反射的一系列公式。

$ frac(1, s') + 1 / s = 2 / r = 1 / f = frac(1, f') $

$ f = f' = r / 2 $

高斯成像公式显然仍成立。

= 逐次成像法
前一个折射面的像作为后一个折射面的物，逐次代入公式计算。
