#Create file of import.sql
touch import.sql;
#A circle to handle all files
ls * | while read file;
do 
mv $file ${$file%.*};
echo -e CREATE DATABASE $file\; >> import.sql;
echo -e use $file\; >> import.sql;
echo -e source $file\; >> import.sql;
done;

