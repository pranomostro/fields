# fields - cut for plan 9, with some more features
# Depends on ../awk

include ../config.mk

all:
	@echo built fields

install:
	@cp -f omit take ${DESTDIR}${PREFIX}/bin/
	@chmod 755 ${DESTDIR}${PREFIX}/bin/omit ${DESTDIR}${PREFIX}/bin/take
	@cp -f omit.1 ${DESTDIR}${MANPREFIX}/man1/
	@chmod 444 ${DESTDIR}${MANPREFIX}/man1/omit.1

uninstall:
	@cd ${DESTDIR}${PREFIX}/bin/; rm -f omit take
	@rm -f ${DESTDIR}${MANPREFIX}/man1/omit.1

clean:
	@true
