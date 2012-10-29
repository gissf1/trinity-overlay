# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
TRINITY_MODULE_NAME="tdebase"

inherit trinity-meta

DESCRIPTION="KSysguard, a network enabled task manager/system monitor, with additional functionality of top."
KEYWORDS=""
IUSE=" dell-laptop"
# TODO: make support for sensors when it will be supported by cmake scripts

src_configure() {
	mycmakeargs=(
		$(cmake-utils_use_with dell-laptop I8K)
	)

	trinity-meta_src_configure
}