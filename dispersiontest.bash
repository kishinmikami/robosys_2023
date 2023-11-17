#!/bin/bash  -xv
# SPDX-FileCopyrightText: 2023 Kishin Mikami blackgodstone.k@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

###正の数字のみ###
out=$(./dispersion 1 2 3 4 )
[ "${out}" = 1.25 ] || ng ${LINENO}

###小数を含む###
out=$(./dispersion -1 3 )
[ "${out}" = 4.0 ] || ng ${LINENO}

###0を含む###
out=$(./dispersion 0 1 2 3 )
[ "${out}" = 1.25 ] || ng ${LINENO}

###小数を含む###
out=$(./dispersion 0.5 1.5 2.5 )
[ "${out}" = 0.6666666666666666 ] || ng ${LINENO}

###数字の区切りが空白二つの場合###
out=$(./dispersion 1  2.5  3 )
[ "${out}" = 0.7222222222222222 ] || ng ${LINENO}


###アルファベット(小文字)を含む###
out=$(./dispersion 1 2 a 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

###アルファベット(大文字)を含む###
out=$(./dispersion 1 2 H 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

###ひらがなを含む###
out=$(./dispersion 1 2 ん 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
