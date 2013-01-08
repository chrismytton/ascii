JP2A=jp2a
GRAVATAR=http://gravatar.com/avatar/049cff7912a937a751f66c19d74919a9?s=525

index.html: dependencies
	$(JP2A) --width=100 --colors --html --html-title='Hectic Jeff ASCII' $(GRAVATAR) > index.html

index.txt: dependencies
	$(JP2A) --width=100 $(GRAVATAR) > index.txt

dependencies:
	@which $(JP2A) > /dev/null || (echo "Missing dependency jp2a"; echo "Install with brew install jp2a" && exit 1)
