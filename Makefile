build:
	true

install:
	mkdir -p $(DESTDIR)/etc/apt/trusted.gpg.d/
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d/
	cp -rv gxde-testing.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/gxde-testing.gpg
	if [ "$(GXDE_CODENAME)" = "tianlu" ]; then cp -rv gxde-testing-tianlu.list $(DESTDIR)/etc/apt/sources.list.d/gxde-testing.list ; fi
	if [ "$(GXDE_CODENAME)" = "bixie" ]; then cp -rv gxde-testing-tianlu.list $(DESTDIR)/etc/apt/sources.list.d/gxde-testing.list ; fi
	if [ "$(GXDE_CODENAME)" = "zhuangzhuang" ]; then cp -rv gxde-testing-zhuangzhuang.list $(DESTDIR)/etc/apt/sources.list.d/gxde-testing.list ; fi
	if [ "$(GXDE_CODENAME)" = "lizhi" ]; then cp -rv gxde-testing-zhuangzhuang.list $(DESTDIR)/etc/apt/sources.list.d/gxde-testing.list ; fi