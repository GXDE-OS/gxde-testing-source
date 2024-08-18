build:
	true

install:
	mkdir -p $(DESTDIR)/etc/apt/trusted.gpg.d/
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d/
	cp -rv gxde-testing.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/gxde-testing.gpg
	cp -rv gxde-testing.list $(DESTDIR)/etc/apt/sources.list.d/gxde-testing.list