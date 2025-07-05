#import "/lib/lib.typ": *
#show: schema.with("page")

#title[圆锥曲线与圆幂定理]
#date[20250307]
#author[Lithium]
= 题目
椭圆$Gamma$ : $x^2 / 4 + y^2 = 1$，左顶点为$C$.
过$P (- 2 \, 1)$的直线交$Gamma$
于$A$、$B$（$A$在$B$左侧），连接$B C$，过$A$作$x$轴垂线交$B C$于$D$，求$A D$中点$E$所在直线方程.

= 分析
拿到这道题第一个思路大概是设直线方程解点硬算，或者设点解点还是硬算，缺乏美感.

+ 第一个简化办法是参数方程，不过只简化了椭圆方程联立这一步，效果不显著.

+ 第二个简化办法，即然已经参数方程了，为什么不#underline[仿射];回单位圆，再参数方程？此题不涉及线段长度，适合仿射.

+ 第三个简化方法，注意到$A D \/ \/ P C$，平行线分线段成比例，那么记$P C$中点为$M$，有$frac(M E, M B) = frac(P A, P B)$。我们可以#underline[利用向量求出$E$坐标];.

+ 第四个简化方法，上述比例使我们想到#underline[圆幂定理];，事实上这完全可行.

= 解
简记：$c = cos theta$ ,$s = sin theta$. \
进行仿射：$x arrow.r.bar x / 2$，得到单位圆，此时$P (- 1 \, 1) \, M (- 1 \, 1 / 2)$.
设$B (c \, s)$. \
由圆幂定理得： \
$ P A dot P B = P A dot sqrt((c + 1)^2 + (s - 1)^2) = P A dot sqrt(3 + 2 c - 2 s) = 1 $
\
可得： \
$ frac(M E, M B) = frac(P A, P B) = frac(P A, sqrt(3 + 2 c - 2 s)) = frac(1, 3 + 2 c - 2 s) := lambda $
\
向量关系（定比分点）： \
$ arrow(B M) & = - 1 / lambda arrow(M E)\
- 1 = frac(lambda c - x_E, lambda - 1) \, & med 1 / 2 = frac(lambda s - y_E, lambda - 1)\
y_E - 1 / 2 & = lambda (s - 1 / 2)\
x_E + 1 & = lambda (c + 1) $ \
(1)与(2)作差： \
$ (y_E - 1 / 2) - (x + 1) = lambda (s - c - 3 / 2) = - 1 / 2 $ \
$E$在直线$y = x + 1$上. \
#underline[注意仿射回原坐标系！] \
$E$在直线$y = 1 / 2 x + 1$上.

= 遗留问题
E所在直线恰好是P关于椭圆的极线，这是巧合吗？ \
这个流程必须使用仿射，而仿射在高考中可能得不到分。但整个流程自然优美，重在思考，减少计算，应当是高考所鼓励的。
