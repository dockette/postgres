build-10: _build-10
build-11: _build-11
build-12: _build-12
build-13: _build-13
build-14: _build-14

_build-%: BUILD_VERSION=$*
_build-%:
	docker build \
		-t dockette/postgres:${BUILD_VERSION} \
		-f ${BUILD_VERSION}/Dockerfile \
		.
