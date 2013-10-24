#!/usr/bin/env bash

#update package lists
apt-get update

#####################################
## SET UP PYTHON NLTK              ##
## http://nltk.org/                ##
#####################################

#install the pip python package manager
apt-get install -y python-pip vim git screen unzip

#install the python package distribute, a prerequisite of nltk
easy_install distribute

#install nltk, the python nlp package
pip install nltk

#download all the data packages for nltk
python -m nltk.downloader all

###################################################
## Python Port of Stanford NLP libraries         ##
## https://bitbucket.org/torotoki/corenlp-python ##
###################################################

#install prerequisites
pip install pexpect unidecode jsonrpclib

#clone the repository and download datafiles
git clone https://bitbucket.org/torotoki/corenlp-python.git
cd corenlp-python
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2013-06-20.zip
unzip stanford-corenlp-full-2013-06-20.zip
cd ..

######################################################
## SET UP R Studio                                  ##
## http://www.rstudio.com/ide/download/serve        ##
######################################################

# install base libraries
apt-get install -y r-base gdebi-core libapparmor1 

# install R Studio Server
wget http://download2.rstudio.org/rstudio-server-0.97.551-i386.deb
gdebi --n rstudio-server-0.97.551-i386.deb

# for more on getting started with R Studio
# http://www.rstudio.com/ide/docs/server/getting_started

# install python scikit
apt-get install -y build-essential python-dev python-numpy python-setuptools python-scipy libatlas-dev libatlas-base libatlas-base-dev python-matplotlib
pip install -U scikit-learn

# install ipython notebook
# http://ipython.org/notebook.html
# to run it ipython notebook
apt-get install ipython-notebook

