cd build
qmake -makefile -o Makefile ../jentos.code.pro -r -platform macx-clang
make
make clean
cd ./build/exec/
macdeployqt Jentos.Code.app -dmg
cd ../../
cd ..
zip -r $TRAVIS_OS_NAME-$TRAVIS_COMMIT-$TRAVIS_BRANCH.zip ./build
cd "$builddir"
