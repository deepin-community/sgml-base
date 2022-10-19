## ----------------------------------------------------------------------
## Makefile : makefile for sgml-base
## ----------------------------------------------------------------------

## ----------------------------------------------------------------------
include MAKE/include

## ----------------------------------------------------------------------
## source package subdirectory definitions
subdirs		= \
		tools

## ----------------------------------------------------------------------
## SGML infrastructure directory definitions
sgml_dirs	= \
		declaration \
		dtd \
		entities \
		misc \
		stylesheet

## ----------------------------------------------------------------------
## targets

all:

		set -e; \
		for d in $(subdirs); \
		do \
			$(MAKE) -C $${d} ${@}; \
		done

install:

		set -e; \
		for d in $(sgml_dirs); \
		do \
			$(INSTALL_DIR) $(sgml_dir)/$${d}; \
			$(INSTALL_DIR) $(local_sgml_dir)/$${d}; \
		done

		set -e; \
		for d in $(subdirs); \
		do \
			$(MAKE) -C $${d} ${@}; \
		done

.PHONY:		\
		all \
		install

## ----------------------------------------------------------------------
