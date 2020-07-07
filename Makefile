# $FreeBSD: head/lang/phantomjs/Makefile 513733 2019-10-03 20:35:29Z jbeich $

PORTNAME=	phantomjs
PORTVERSION=	2.1.1
PORTREVISION=	16
CATEGORIES=	lang

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Minimalistic, headless, WebKit-based, JavaScript-driven tool

LICENSE=	BSD3CLAUSE

USES=		cmake qt:5
USE_QT=		core gui network buildtools_build qmake_build webkit widgets

USE_GITHUB=	yes
GH_ACCOUNT=	ariya
GH_TAGNAME=	01d33970

HAS_CONFIGURE=	yes

PLIST_FILES=	bin/phantomjs

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/.build/bin/phantomjs ${STAGEDIR}${PREFIX}/bin/phantomjs

.include <bsd.port.mk>
