PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

install:
	@printf "Installing executable file to ${DESTDIR}${PREFIX}/bin\n"
	@install -m 0755 git-release ${DESTDIR}${PREFIX}/bin/git-release
	@printf "Installing manual page to ${DESTDIR}${MANPREFIX}/man1\n"
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@install -m 0644 git-release.1 ${DESTDIR}${MANPREFIX}/man1/git-release.1

uninstall:
	@printf "Removing executables from ${DESTDIR}${PREFIX}/bin\n"
	@rm -f ${DESTDIR}${PREFIX}/bin/git-release
	@printf "Removing manual page from ${DESTDIR}${MANPREFIX}/man1\n"
	@rm -f ${DESTDIR}${MANPREFIX}/man1/git-release.1
