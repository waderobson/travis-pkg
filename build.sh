
chmod  -R +x scripts/
mkdir build

if [ ! -z $TRAVIS_TAG ]; then
VERSION=$(echo $TRAVIS_TAG | cut -c2-)
  echo "building package $VERSION"
  pkgbuild --root ROOT --scripts scripts --identifier com.example.pkg --version $VERSION build/example.pkg
fi
