## ----------------------------------------------------------------------
## Makefile : makefile for sgml-base/tools
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include ../MAKE/include

## ----------------------------------------------------------------------
## Package file definitions
templates	= \
		catalog.super \
		catalog.centralized \
		transitional.cat
sbins		= \
		update-catalog \
		install-sgmlcatalog
man8s		= \
		$(addsuffix .$(man8_ext),$(sbins))

## ----------------------------------------------------------------------
## targets

all:		$(man8s)

# There is no POD documentation. This just truncates the existing manual pages.
#%.$(man8_ext):	%
#
#		$(POD2MAN) --section $(man8_ext) --center $(pkg_name) ${<} ${@}


install:

		set -e; \
		$(INSTALL_DIR) $(pkg_share_dir); \
		for f in $(templates); \
		do \
			$(INSTALL_FILE) $${f} $(pkg_share_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(sbin_dir); \
		for f in $(sbins); \
		do \
			$(INSTALL_BIN) $${f} $(sbin_dir); \
		done

		set -e; \
		$(INSTALL_DIR) $(man8_dir); \
		for f in $(man8s); \
		do \
			$(INSTALL_FILE) $${f} $(man8_dir); \
		done

.PHONY:		\
		all \
		install

## ----------------------------------------------------------------------
