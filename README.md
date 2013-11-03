Data Science VM
===================

Vagrant + VirtualBox scripts for setting up an Ubuntu (32 bit) Data Science server. If you want to make changes or improvements, don't be shy; send me a note or a pull request.

This system takes a download-it-all approach. As a result, it can take quite a whilte to download everything and set the server up. Do adjust the Vagrantfile to focus only on the tools you need.

Installing Locally with VirtualBox
-------------
- Install VirtualBox
- Install Vagrant
- Set up the Ubuntu Precise32 Vagrant Box `vagrant box add precise32 http://files.vagrantup.com/precise32.box`
- Run `vagrant up` This should launch the box and download/install a suite of data science tools.

Installing on Amazon AWS
-------------
Vagrant can also launch, provision, and manage Amazon AWS instances. For more, read the [vagrant-aws page](https://github.com/mitchellh/vagrant-aws).

- `vagrant plugin install vagrant-aws`
- Create a new AWS access key or note the location of your existing key
- Create a 'dummy' vagrant box that will stand in for AWS `vagrant box add awsubuntu https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box`
- Change the base box in Vagrantfile.aws to 'awsubuntu'
- Add your access ID, key name, and key file location to Vagrantfile.aws
- Copy Vagrantfile.aws over Vagrantfile
- Add port 22, 8888, and 8787 to the default security group on your AWS account, or [create a new security group with SSH access](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/authorizing-access-to-an-instance.html) and add it to the Vagrant file
- To launch your VM, run `vagrant up --provider=aws`



Tools Included 
-------------
- Python NLTK
- Python Stanford Core NLP Library, with Web API
- iPython Notebook
- R Studio
- Python Scikit-learn
- Vim
- Screen

Accessing R Studio
-------------
Port forwarding is automatically set up on port 8787. If you're running Vagrant locally, load `localhost:8787`. If remotely, load `http://SERVER_ADDRESS:8787` The default username and password match [the default password of Vagrant](http://docs-v1.vagrantup.com/v1/docs/base_boxes.html).

iPython Notebook
-------------
The proxy is automatically set up on port 8888. run `ipython notebook` and access `localhost:8888` 

Accessing Web Services
-------------
If you launch other servers, you need to set up port forwarding. Read this guide to [port forwarding on Vagrant] (http://docs-v1.vagrantup.com/v1/docs/getting-started/ports.html)

Running the Stanford CoreNLP Python Module
-------------
`python corenlp-python/corenlp/corenlp.py`


