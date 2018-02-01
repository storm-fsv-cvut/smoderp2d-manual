cp html/manual_CZ.html html/tmp-manual_CZ.html

st='href="manual'
no='href="http://oldstorm.fsv.cvut.cz/~smoderp/html/manual'


sed -i "s@$st@$no@" html/tmp-manual_CZ.html 



st='src="./'
no='src="http://oldstorm.fsv.cvut.cz/~smoderp/html/'

sed -i "s@$st@$no@" html/tmp-manual_CZ.html 



st='src="manual'
no='src="http://oldstorm.fsv.cvut.cz/~smoderp/html/manual'

sed -i "s@$st@$no@" html/tmp-manual_CZ.html 


st='http://oldstorm.fsv.cvut.cz/~smoderp/html/manual_CZ.css'
no='manual_CZ.css'
# http://oldstorm.fsv.cvut.cz/~smoderp/html/manual_CZ.css

echo $st
echo $no

sed -i "s@$st@$no@" html/tmp-manual_CZ.html 