# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
TRINITY_MODULE_NAME="tdemultimedia"

inherit trinity-meta

DESCRIPTION="Trinity mixer gui"
KEYWORDS=
IUSE="alsa"

DEPEND="alsa? ( media-libs/alsa-lib )"
RDEPEND="${DEPEND}"

src_configure() {
	mycmakeargs=(
		$(cmake-utils_use_with alsa ALSA)
	)

	trinity-meta_src_configure
}
