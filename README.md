#### JBrowse Docker IMG

1. `docker-compose up`
2. * for building track files `docker-compose run --rm jbrowse /jbrowse/bin/prepare-refseqs.pl --fasta /data/specie.fa` 
   * If track files exist, then `docker-compose up` would build and run the img.
3. type `localhost` or the `IP address` of host machine in your browser.   

for docker-img R&D 

1. `docker build -t jbrowse-docker:<version> .`
2. `docker run -v $(pwd)/data:/data -it jbrowse-docker:<version>`

#### dependency issues - not documented in manual
perl dependency: https://grantm.github.io/perl-libxml-by-example/installation.html 

manual: https://jbrowse.org/docs/installation.html
allowing setup.sh echo errors instead of logging was helpful. 
