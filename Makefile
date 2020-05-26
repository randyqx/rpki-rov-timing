#
# Makefile for I-D's and RFCs
# $Id: Makefile,v 1.1.1.1 2002-11-11 05:11:48 randy Exp $
#

# Your nroff document is called foo.txt. Change below as appropiate.
NAME=draft-ietf-sidrops-rpki-rov-timing
DEST=psg.com:public_html
RSY=rsync --rsh ssh -v -a -l -H -p -t -x --delete

all: $(NAME).xml
	xml2rfc $(NAME).xml --html --text

rsy:
	$(RSY) $(NAME).html $(DEST)
	$(RSY) $(NAME).txt  $(DEST)

clean:
	rm -f *.html
