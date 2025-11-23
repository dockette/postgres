build-10: _build-10
build-11: _build-11
build-12: _build-12
build-13: _build-13
build-14: _build-14
build-15: _build-15
build-16: _build-16
build-17: _build-17
build-17extra: _build-17extra
build-17pig: _build-17pig
build-18: _build-18

_build-%: BUILD_VERSION=$*
_build-%:
	docker build \
		-t dockette/postgres:${BUILD_VERSION} \
		-f ${BUILD_VERSION}/Dockerfile \
		.

_build-17extra:
	docker build \
		-t dockette/postgres:17extra \
		-f 17extra/Dockerfile \
		.

_build-17pig:
	docker build \
		-t dockette/postgres:17pig \
		-f 17pig/Dockerfile \
		.
