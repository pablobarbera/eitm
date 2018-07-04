## step 1) login to console, sudo su, open R
## install packages from Setup
## for topic models, run: sudo apt-get install libgsl0-dev

# deleting previous users

for i in 0{1..9} {10..50}
do
	userdel -r upf$i
done

# creating new users

for i in 0{1..9} {10..50}
do
	adduser --quiet --disabled-password --shell /bin/bash --home /home/eitm$i --gecos "User" eitm$i
	echo "eitm$i:password$i" | chpasswd
done

# copying files and changing permissions
for i in 0{1..9} {10..50}
do
	mkdir /home/eitm$i/code
	mkdir /home/eitm$i/data
	cp /home/rstudio/code/* /home/eitm$i/code/
	cp /home/rstudio/data/* /home/eitm$i/data/	
	sudo chown eitm$i -R /home/eitm$i/
done	


# solutions challenge 1
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge1-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge1-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

# solutions challenge 2
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge2-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge2-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

