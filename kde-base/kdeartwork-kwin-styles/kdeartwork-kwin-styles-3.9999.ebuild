# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME="kdeartwork"
EAPI="4"
inherit trinity-meta

DESCRIPTION="Window styles for kde"
KEYWORDS=""
IUSE=""

DEPEND=">=kde-base/kwin-${PV}:${SLOT}"
RDEPEND="$DEPEND"