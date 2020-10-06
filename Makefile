prefix = /usr
bin_dir = $(prefix)/bin
alpm_dir = $(prefix)/share/libalpm/hooks/
systemd_dir = $(prefix)/lib/systemd/system

all:

install:
	install -Dt $(DESTDIR)$(bin_dir) kernel-update-hook
	install -Dt $(DESTDIR)$(bin_dir) kernel-update-modules

	install -m644 -Dt $(DESTDIR)$(alpm_dir) 05-kernel-update-hook.hook

	install -m644 -Dt $(DESTDIR)$(systemd_dir) kernel-update-hook.service
	install -m644 -Dt $(DESTDIR)$(systemd_dir) kernel-update-hook.timer
