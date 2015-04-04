# Compound workspaces along with Cocoapods
The issue the provided source code demonstrates is: it's impossible to run any assembly on a real device running iOS; installed, the app crashes at launch time with an error message similar to the one given below.

    dyld: Library not loaded: @rpath/Alamofire.framework/Alamofire
      Referenced from: #path to the binary#
      Reason: image not found

It appears the problem lays in a bunch of the shell scripts that is shipped with the installed pods and named according to this pattern: _#target.name#-frameworks.sh_. What for are these scripts? - They were proposed by [Samuel Giddins](https://twitter.com/segiddins) to overcome the issue described on [this web page](http://samdmarshall.com/blog/swift_and_objc.html). Unfortunately, they not only do the trick, but also give rise to the issue described above.

The gist of the manifested problem is due to the extra copies of the embedded frameworks (see [the screenshot](http://joxi.ru/ZrJVwV6fv7qgrj)). To prevent **Xcode** (as well as _xcodebuild_) from producing these extra copies, the associated [Podfile](https://github.com/Maxim-38RUS-Zabelin/compound-workspaces-along-with-cocoapods/blob/solution/Podfile) has been patched with the following post-install hook (the complete solution resides in [this branch](https://github.com/Maxim-38RUS-Zabelin/compound-workspaces-along-with-cocoapods/tree/solution)):

    post_install do |installer|
        installer.project.targets.each do |target|
            %x( if [ -f "Pods/Target Support Files/#{target.name}/#{target.name}-frameworks.sh" ]; then
               if [ "#{target.name}" != "Pods-demo" ]; then
                   echo "#!/bin/sh\necho Skipping Pods/Target Support Files/#{target.name}/#{target.name}-frameworks.sh" > "Pods/Target Support Files/#{target.name}/#{target.name}-frameworks.sh";
               fi
               fi )
        end
    end

IMHO, it would be nice to have a chance to disable these shell scripts for certain targets without any additional post-install hooks.