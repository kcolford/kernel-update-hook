all:

install:
	install -Dt $(DESTDIR)/usr/bin/ kernel-update-hook
	mkdir -p $(DESTDIR)/var/lib/kernel-update-hook/

	install -Dm644 -t $(DESTDIR)/usr/share/libalpm/hooks/ 05-kernel-update-hook.hook
	install -Dm644 -t $(DESTDIR)/usr/lib/systemd/system/ kernel-update-hook.service
	mkdir -p $(DESTDIR)/usr/lib/systemd/system/shutdown.target.wants/
	ln -s ../kernel-update-hook.service $(DESTDIR)/usr/lib/systemd/system/shutdown.target.wants/
