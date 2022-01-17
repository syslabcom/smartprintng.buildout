all: bin/instance

py27/bin/pip2.7:
	virtualenv -p python2.7 py27

py27/bin/buildout: py27/bin/pip2.7 requirements.txt
	./py27/bin/pip2.7 install -r requirements.txt

bin/instance: py27/bin/buildout buildout.cfg
	./py27/bin/buildout -Nt 2
