# About this repository
Those codes are supplemental material of the book below.

"Analytical Mechanics of Space Systems, Fourth Edition"

by Hanspeter Schaub and John L. Junkins

https://arc.aiaa.org/doi/suppl/10.2514/4.105210

# 説明
EPとは，Euler parameterの略で，Quaternionの別名である．
また，プログラムのEuler321の「321」といった数字は，回し方を表している．
321の場合，yaw (psi) -> pitch (theta) -> roll (phi)の順に回すことを意味する．
例えば，Euler3212EP.mを使用する場合，

```
% MATLAB
q = Euler3212EP([roll pitch yaw])   % 4x1
```

とすると，クォーターニオンが得られる．

ここで，クォーターニオンは
`q = q0 + q1i + q2j + q3k`
であり，変数`q`に`4x1`のベクトルで格納される．

また，以下のようにすれば，Euler -> Quaternion -> Eulerの一連の変換を行うことができる．

```
EP2Euler123(Euler3212EP([1 1.5 2.0])) % -> [1 1.5 2.0]が出力される
```


ドローン工学入門の式番号と，プログラムの対応を以下に示す．

- ドローン工学入門式番: プログラム
- (1.86): dEP.m / BmatEP.m
- (1.66): Euler3212EP.m
- (1.72): EP2C.m     : Inertia-frame から Body-frameへの回転行列（方向余弦行列）
- (1.57): EP2C.mの転置: Body-frame から Inertia-frameへの回転行列（方向余弦行列）
