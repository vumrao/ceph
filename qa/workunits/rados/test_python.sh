#!/bin/sh -ex

ceph osd pool create rbd
${PYTHON:-python} -m nose -v $(dirname $0)/../../../src/test/pybind/test_rados.py
exit 0
