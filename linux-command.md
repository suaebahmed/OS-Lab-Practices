# Linux Basic command tutorial

# creating

touch {1..10}.{txt,doc,pdf}
echo "Hello World!!, I am shouting from bash" >> out.txt

# display file

```
ls \*.???
ls -l
ls -l -a
=> -l long list with hidden file(-a)


cat filter.txt
head -5 filter.txt
tail -2 filter.txt
wc filter.txt
grep -s '[A-Z]' filter.txt
cut -h 3 filter.txt
```

### move

```
mv | ls \*.??? lab2
```

### copy file

```
cp old_file.txt new_file.txt
```
