#!/bin/bash
# SPDX-FileCopyrightText: 2024 Rikuto Nozaki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違う
	res = 1
}
res=0

# 有効な数字
out=$( echo 45 | ./functions)
get="sin(45) = 0.70701
     cos(45) = 0.70711
     tan(45) = 1.0"
[ "${out}" = "${get}" ] || ng "$LINENO"

# 異常な入力

out=$( echo www | ./functions)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$( echo "" | ./functions)
[ "$?"  = 1 ]     || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$( echo 45? | ./functions)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# テスト結果
[ "$res" = 0 ] && echo OK
exit $res
