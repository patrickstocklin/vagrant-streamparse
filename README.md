# vagrant-streamparse

A Vagrant VM that lets users implement Apache Storm in Python

Synopsis: This Vagrant VM allows someone to quickly spin up a working environment for Storm tuple-streaming in Python. The provisioning shell script installs JDK8, Apache Storm, Leiningen for .clj scripts, and Streamparse. Streamparse allows users to define Storm bolts and spouts all in Python, and even comes with a working WordCount demonstration. More can be read here: https://github.com/Parsely/streamparse

Installation:

1) Make a directory in your desired location

```mkdir yourDirectory```

```cd yourDirectory```

2) Clone the repo

```git clone https://github.com/patrickstocklin/vagrant-streamparse```

3) Spin up your Vagrant VM and ssh in (provisioning will take a couple of minutes)

```vagrant up```

```vagrant ssh```

4) Once inside, you should already have a working example under the directory WordCountExample, run it by entering the example directory and executing:

```sudo sparse run```

Apache Storm should be started with 2 workers. Once everything is set up (Zookeeper, etc.), you will see each worker print the count of occurences of each tuple.
