# This script will audit the indexes to make sure all references are present
# note: complete lists are in files named csae_audit*.tmp.  To preserve them, issue: "touch debug" to prevent from being cleaned up at the end

echo The full audit of nbviewer is slow and can take 20 minutes. There is a faster option to just check if the URL is correct but readonly file contents wont be checked
read -p "Enter y if you want the fast option: " fast
if [ "$fast" = y ]; then echo will only check URL; else echo will do full check on URL and file contents; fi 

grep '"url"' jupyter-demos.json | grep -v 'https:' | cut -d '"' -f4 > csae_audit_notebooks.tmp
grep '"url"' jupyter-demos.json | grep 'https:' | grep -v 'https://nbviewer.org' | cut -d '"' -f4 > csae_audit_videos.tmp
grep '"url"' jupyter-demos.json | grep 'https:' | grep 'https://nbviewer.org' | cut -d '"' -f4 > csae_audit_nbviewer.tmp

echo -e \\n---------------- audit of notebook files in .demo/jupyter-demos.json ----------------
errors=0
for i in $(cat csae_audit_notebooks.tmp); do 
   if [ ! -e ../$i ]; then 
      errors=$(( $errors + 1 ))
      echo Missing notebook $i
      thedir=${i%/*}
      if [ -e ../$thedir ]; then 
         for ii in $(ls ../${thedir}/*.ipynb); do
             echo "    related file: $ii"
         done
      else
         echo "    The directory is bad"
      fi
   fi
done
echo there were $errors errors in notebook files

if [ "$fast" != y ]; then 
	echo -e \\n---------------- full audit of nbviewer URLs in .demo/jupyter-demos.json ----------------
	errors=0
	[ -e csae_audit_nbviewer.err ] && rm csae_audit_nbviewer.err
	num_notebooks=$(cat csae_audit_nbviewer.tmp | wc -l)
	num=0
	for i in $(cat csae_audit_nbviewer.tmp); do
	   num=$(( $num + 1 ))
	   [ $(( $num % 5 )) = 1 ] && echo Processing $num of $num_notebooks
	   x="$(curl -s $i | tr \\0 \\n)"
	   [ "${x/<h1>400/}" != "$x" ] && echo bad nbviewer content $(echo $i | cut -d '/' -f 9-11) | tee -a csae_audit_nbviewer.err
	   [ "${x/<h1>404/}" != "$x" ] && echo missing nbviewer content $(echo $i | cut -d '/' -f 9-11) | tee -a csae_audit_nbviewer.err
	done
	ls
	if [ -e csae_audit_nbviewer.err ]; then
	   echo -e \\n ... Summary of $(cat csae_audit_nbviewer.err | wc -l) nbviewer URL errors
	   cat csae_audit_nbviewer.err
	   [ ! -e debug ] && rm csae_audit_nbviewer.err
	else
	   echo there were no missing nbviewer read-only files
	fi

else
	echo -e \\n---------------- fast audit of nbviewer URLs .demo/jupyter-demos.json ----------------
	errors=0
	for i in $(cat csae_audit_nbviewer.tmp); do
	   resp=$(curl -is $i | head -n1 | tr -d \\r)
	   read http code <<< $resp
	   if [ "$code" != 200 ]; then echo Got HTTP code $code for $i; errors=$(( $errors + 1 )); fi
	done
        echo there were $errors errors in the audit of nbviewer files
fi

 
echo -e \\n---------------- audit of Video URLs in .demo/jupyter-demos.json ----------------
errors=0
for i in $(cat csae_audit_videos.tmp); do
   resp=$(curl -is $i | head -n1 | tr -d \\r)
   read http code <<< $resp
   if [ "$code" != 200 ]; then echo Got HTTP code $code for $i; errors=$(( $errors + 1 )); fi
done   
echo there were $errors errors in the audit of video URLs

cat ../README.md | tr '[' \\n | grep '](./' | cut -d '(' -f2 | cut -d ')' -f1 > csae_audit_readme.tmp
echo -e \\n---------------- audit of notebook files in README.md  ----------------
errors=0
for i in $(cat csae_audit_readme.tmp); do 
   if [ ! -e ../$i ]; then 
      errors=$(( $errors + 1 ))
      echo Missing notebook $i
      thedir=${i%/*}
      if [ -e ../$thedir ]; then 
         for ii in $(ls ../${thedir}/*.ipynb); do
             echo "    related file: $ii"
         done
      else
         echo "    The directory is bad"
      fi
   fi
done
echo there were $errors errors in README.md
