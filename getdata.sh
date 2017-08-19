
#!/bin/sh

TICKER="$1"


#wget -k -O $TICKER.csv  http://ichart.yahoo.com/table.csv?s=$TICKER&a=0&b=1&c=2013
wget -k -O inputData.csv  http://ichart.yahoo.com/table.csv?s=$TICKER&a=0&b=1&c=2013