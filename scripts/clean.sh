#!/bin/sh
fvm flutter precache --ios

fvm flutter clean
fvm flutter pub get

cd ios
pod install

cd ..
spider build

fvm flutter pub run build_runner build --delete-conflicting-outputs