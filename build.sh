
chmod +x scripts/
mkdir build
if [ -z echo $TRAVIS_TAG ]; then
pkgbuild --root ROOT --scripts scripts --identifier com.example.pkg --version $(echo $TRAVIS_TAG | cut -c2-) build/example.pkg
fi
