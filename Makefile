codedir = /usr/share/git-lfs-ro-server/
servicedir = /usr/lib/systemd/system/

all:

install:
	install -d $(DESTDIR)$(codedir)
	install -m 0644 BSCpio.pm BSHTTP.pm BSDispatch.pm BSSQLite.pm BSServer.pm BSUtil.pm $(DESTDIR)$(codedir)
	install -m 0755 obs_git_lfs obs_git_lfs_admin $(DESTDIR)$(codedir)
	install -d $(DESTDIR)$(servicedir)
	install -m 0644 obs-git-lfs.service $(DESTDIR)$(servicedir)

.PHONY: all install

