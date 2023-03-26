clickable()
{
 while read line
 do
  file=` echo "$line" | cut -f1 -d':' `
   hit=` echo "$line" | cut -f2- -d':' ` 
  echo "<p> <a href='/shared/humphrys/shakespeare/$file'>$file</a>: <br> $hit </p>"
 done
}

# send output to this file:

exec > $HOME/bin/gweb2.output.html


cd /shared/humphrys/shakespeare

echo '<pre>'
grep -i "$1"  */*html | sed -e 's|<|\&lt;|g'   |   sed -e 's|>|\&gt;|g' | clickable
echo '</pre>'

