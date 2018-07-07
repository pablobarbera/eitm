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

# materials day 2
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/04-twitter-streaming-data-collection.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/05-twitter-REST-data-collection.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge3.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge4.Rmd /home/eitm$i/code/
	mkdir /home/eitm$i/credentials/
	sudo chown eitm$i -R /home/eitm$i/
done

# materials day 2, afternoon session
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/06-text-discovery.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/07-topic-models.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/08-advanced-topic-models.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge5.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge6.Rmd /home/eitm$i/code/
	cp /home/rstudio/data/trump-tweets.json /home/eitm$i/data/
	cp /home/rstudio/data/nytimes.csv /home/eitm$i/data/
	cp /home/rstudio/data/candidate-tweets.csv /home/eitm$i/data/
	cp /home/rstudio/data/campaign-speeches.csv /home/eitm$i/data/
done

# solutions challenge 3
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge3-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge3-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

# solutions challenge 4
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge4-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge4-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done


# solutions challenge 5
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge5-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge5-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done


# emoji tweets
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/05b-twitter-emoji-data-collection.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/05b-twitter-emoji-data-collection.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done


# solutions challenge 6
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge6-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge6-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

# materials day 3, session 1
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/09-sql-intro.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/10-sql-advanced.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge7.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge8.Rmd /home/eitm$i/code/
	cp /home/rstudio/data/congress-facebook-2017.csv /home/eitm$i/data/
	mkdir /home/eitm$i/data/posts
	cp /home/rstudio/data/posts/* /home/eitm$i/data/posts/
done



# solutions challenge 7
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge7-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge7-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

# solutions challenge 8
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge8-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge8-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

# materials day 3, session 2
for i in 0{1..9} {10..50}
do
	mkdir /home/eitm$i/credentials
	cp /home/rstudio/credentials/bigquery-token.json /home/eitm$i/credentials/
	cp /home/rstudio/code/11-bigquery-intro.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/12-bigquery-advanced.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge9.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge10.Rmd /home/eitm$i/code/
done


# solutions challenge 9
for i in 0{1..9} {10..50}
do
	cp /home/rstudio/code/challenge9-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge9-solutions.html /home/eitm$i/code/
	cp /home/rstudio/code/challenge10-solutions.Rmd /home/eitm$i/code/
	cp /home/rstudio/code/challenge10-solutions.html /home/eitm$i/code/
	sudo chown eitm$i -R /home/eitm$i/
done

