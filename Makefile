PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin

all:
	@echo "Nothing to build"

install:
	install -D ./7za.expect $(BINDIR)/7za.expect
	install -D ./backup@.service /etc/systemd/system/backup@.service
	install -D ./backup.example /etc/sysconfig/backup
	printf 'changeit' > /etc/sysconfig/backup.password && chmod 600 /etc/sysconfig/backup.password

uninstall:
	rm -f $(BINDIR)/7za.expect
	rm -f /etc/systemd/system/backup@.service
