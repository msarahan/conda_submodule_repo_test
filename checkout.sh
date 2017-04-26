pkgs="zlib xz bzip2 libffi ca-certificates openssl ncurses readline sqlite yaml python certifi setuptools pyparsing six packaging idna asn1crypto pycparser cffi cython py pytest coverage pytest-cov cryptography ruamel_yaml vcversioner jsonschema wheel pip requests pyopenssl conda-env pycosat conda tk python perl pkgconfig"

_gh_user=AnacondaRecipes
_branch=master

for _pkg in ${pkgs}; do
	if [[ ! -d ${_pkg} ]]; then
		if [[ "${_pkg}" != "asn1crypto" ]] && [[ "${_pkg}" != "cryptography" ]] ; then
          git submodule add -b ${_branch} https://github.com/${_gh_user}/${_pkg}-feedstock ${_pkg}
		fi
	fi
done
