# FOR LOOP IN BASH 

for file in *.TXT; do
echo "processing $file"
echo "state, gender, year, firstname, count" > tempfile 
cat $file >> tempfile
mv tempfile ${file/.TXT/.csv}
done

