# convert list of args (separated by spaces) into list separated by commas

TAGS=` echo $* | tr ' ' ',' `

# now use TAGS to construct the URL

wget -q -O - "https://api.flickr.com/services/feeds/photos_public.gne?format=json&tags=$TAGS" |
egrep '"description":|"tags":' |
tr -d '\\' |
sed "s|<p>|<hr style='margin-top:50'><p>|"  > $HOME/flickr2.html
