Vagrant Data Science
===================

Vagrant + VirtualBox scripts for setting up an Ubuntu (32 bit) Data Science server. If you want to make changes or improvements, don't be shy; send me a note or a pull request.

This system takes a download-it-all approach. As a result, it can take quite a whilte to download everything and set the server up. Do adjust the Vagrantfile to focus only on the tools you need.

Tools Included 
-------------
- Python NLTK
- Python Stanford Core NLP Library, with Web API
- iPython Notebook
- R Studio
- Vim
- Screen

Accessing R Studio
-------------
Port forwarding is automatically set up on port 8787. If you're running Vagrant locally, load `localhost:8787`. If remotely, load `http://SERVER_ADDRESS:8787` The default username and password match [the default password of Vagrant](http://docs-v1.vagrantup.com/v1/docs/base_boxes.html).

Accessing Web Services
-------------
If you launch other servers, you need to set up port forwarding. Read this guide to [port forwarding on Vagrant] (http://docs-v1.vagrantup.com/v1/docs/getting-started/ports.html)

Running the Stanford CoreNLP Python Module
-------------
`python corenlp-python/corenlp/corenlp.py`


