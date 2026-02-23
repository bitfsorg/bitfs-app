.PHONY: android ios macos linux windows clean

android:
	# TODO: cross-compile for Android (arm64, arm, x86_64)
	# CGO_ENABLED=1 GOOS=android GOARCH=arm64 go build -buildmode=c-shared -o ../android/app/src/main/jniLibs/arm64-v8a/libbitfs.so .
	@echo "android: not yet implemented"

ios:
	# TODO: build xcframework for iOS
	# CGO_ENABLED=1 GOOS=ios GOARCH=arm64 go build -buildmode=c-archive -o libbitfs.a .
	@echo "ios: not yet implemented"

macos:
	CGO_ENABLED=1 go build -buildmode=c-shared -o ../macos/Frameworks/libbitfs.dylib .

linux:
	CGO_ENABLED=1 go build -buildmode=c-shared -o ../linux/lib/libbitfs.so .

windows:
	CGO_ENABLED=1 GOOS=windows go build -buildmode=c-shared -o ../windows/runner/libbitfs.dll .

clean:
	rm -f ../macos/Frameworks/libbitfs.dylib
	rm -f ../linux/lib/libbitfs.so
	rm -f ../windows/runner/libbitfs.dll
