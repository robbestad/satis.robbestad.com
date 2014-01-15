#!/bin/bash
BASEDIR=$(dirname $0)
php $BASEDIR/vendor/bin/satis build $BASEDIR/satis.json $BASEDIR/public
