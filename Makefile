GITBOOK = $(CURDIR)/gitbook
DOCS = $(CURDIR)/docs

mk-book: $(GITBOOK)
	gitbook build $(GITBOOK) $(DOCS)
	
