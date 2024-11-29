#!/bin/bash
# SPDX-FileCopyrightText: 2024 Rikuto Nozaki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違う
	res = 1
        echo ${1}行目が違う
        res = 1
}
res=0

# 有効な数字
out=$( echo 45 | ./functions)
[ "{out}" = $("角度: 45.0度\nsin(45.0) = 0.70711\ncos(45.0) = 0.70711\ntan(45.0) = 1.0\n") || ng "$LINENO"

# 数字以外の入力
out=$( echo www | ./functions)
[ "{out}" = $("数字ではないものが入力されています") || ng "$LINENO"

# 空入力
out=$( echo "" | ./functions)
[ "{out}" = $("数字ではないものが入力されています") || ng "$LINENO"　 
=======
[ "{out}" = $("数字ではないものが入力されています") || ng "$LINENO"

# テスト結果
[ "${res}" = 0 ] && echo OK
exit $res
