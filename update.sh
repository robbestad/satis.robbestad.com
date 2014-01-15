BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
php $BASEDIR/vendor/bin/satis build $BASEDIR/satis.json $BASEDIR/public
