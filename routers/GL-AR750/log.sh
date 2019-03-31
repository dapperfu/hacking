#!/usr/bin/env bash
CMD=${*}
LOG=`echo ${CMD}.txt | sed "s/ /_/g" | sed "s/\//-/g"`
exec ${CMD} > ${LOG}
cat ${LOG}
