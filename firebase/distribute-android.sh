# READ DOCS: https://firebase.google.com/docs/app-distribution/android/distribute-cli?authuser=0&hl=en&apptype=apk

firebase appdistribution:distribute \
    --app 1:892296995692:android:ab53a268cba93cc4490949 \
    --release-notes "Test Release" \
    --release-notes-file "./app_distribution/release-note.txt" \
    --testers-file "./app_distribution/testers.txt" \
    --debug  \
    ../build/app/outputs/apk/release/app-release.apk