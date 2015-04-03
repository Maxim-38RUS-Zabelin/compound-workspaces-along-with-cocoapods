# Compound workspaces along with Cocoapods
The issue the provided source code demonstrates is: it's impossible to run any assembly on a real device running iOS; installed, the app crashes at launch time with an error message similar to the one given below.

    dyld: Library not loaded: @rpath/Alamofire.framework/Alamofire
      Referenced from: #path to the binary#
      Reason: image not found
 
One may find an analogous issue discussed on [this web page](https://github.com/Alamofire/Alamofire/issues/101).
