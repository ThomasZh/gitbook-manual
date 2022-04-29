gitbook build
cd _book/gitbook
sed 's/if(m)/if(false)/g' theme.js > theme.js.tmp
mv theme.js.tmp theme.js