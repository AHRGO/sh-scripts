#!/bin/bash

# FLUTTER APP BUILD
proddb() {
  firebase use #prod db name
  firebase projects:list
  flutterfire configure
}

devdb() {
  firebase use #dev db name
  firebase projects:list
  flutterfire configure
}

bdevapk() {
  flutter build apk --dart-define-from-file=keys_dev.json
}

bprodapk() {
  flutter build apk --release --dart-define-from-file=keys_prod.json
}

bdevaab() {
  flutter build appbundle --dart-define-from-file=keys_dev.json
}

bprodaab() {
  flutter build appbundle --release --dart-define-from-file=keys_prod.json
}