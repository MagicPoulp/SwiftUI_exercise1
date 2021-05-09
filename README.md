# SwiftUI_exercise1

Author: Thierry Vilmart
May 2021

A training project with SwiftUI and RXSwift

A table view shows a list of dogs that can be makred as favorites.
The update of the number in the app bar is updated using RxSwift.

It really seems that, as of May 2021, RxSwift needs to use ObservableObject
in order to trigger an update of the UI. But it works as shown in this project,
and it looks fine.

The table view was taken from the blog below, and was then customized (for colors),
and a favorite star component was added.
https://stackoverflow.com/questions/57205114/swiftui-only-showing-a-black-screen

# Licenses

See the licenses folder. All is free to use with the licenses, except the star icons
that are only for personal projects (they limited the license),

# Prerequisite to install the Podfile

If Pod install fails try this;
pod install will crash unless this is done:
gem install ffi -- --enable-system-libffi --enable-libffi-alloc
As explained here for Apple silicon:
https://github.com/ffi/ffi/issues/800

# Links

Goog link illustrating that when using RxSwift we need ObservableObject to set up a binding with the UI
https://stackoverflow.com/questions/59425271/update-swiftui-list-after-network-request-using-rxswift

Good link about the ObservableObject to update the UI from an event
https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-published-property-wrapper

super old 2017 RxSwift blog (do not run too old)
https://www.thedroidsonroids.com/blog/rxswift-by-examples-1-the-basics

The table view was highly inspired from the blog below. And then customized.
// Recent table view blog
// https://www.appcoda.com/swiftui-first-look/
trick in the SceneDelegate to fix the black scrren in the above sample called Tutor
https://stackoverflow.com/questions/57205114/swiftui-only-showing-a-black-screen
