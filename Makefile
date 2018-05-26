all:

install:
	install -D kernel-update-hook $(DESTDIR)/usr/bin/
	mkdir -p $(DESTDIR)/var/lib/kernel-update-hook/

	install -Dm644 05-kernel-update-hook.hook $(DESTDIR)/usr/share/libalpm/hooks/
	install -Dm644 kernel-update-hook.service $(DESTDIR)/usr/lib/systemd/system/
	mkdir -p ../kernel-update-hook.service $(DESTDIR)/usr/lib/systemd/system/shutdown.target.wants/
