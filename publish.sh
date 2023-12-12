#!/bin/sh
flutter pub get
flutter build web
aws s3 sync ./build/web s3://spiratus.org --profile bae --exclude ".git/*"
