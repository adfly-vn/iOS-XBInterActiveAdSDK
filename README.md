# XBInterActiveAdSDK


# Get Started
This guide is for publishers who want to monetize an iOS app with Adfly.

Integrating the Adfly Ads SDK into app is the first step toward displaying ads and earning revenue.

## Prerequisites
* iOS 9.0 or higher

## AppKey
AppKey is the identification of publisher’s application on Adlfy. Developers need request the AppKey first.

For now adfly dashboard havn’t support add app by yourself. And you need concat with our to get the AppKey and AppSecret.

## Import the sdk
Now you can use cocoapos to intergate our SDK.

### Manual Download

1. pod 'XBInterActiveAdSDK', '~> 2.0.0'
2. pod install
3. import 
```
oc:#import <XBInterActiveAdSDK/XBInterActiveAdSDK.h>
swift: import XBInterActiveAdSDK
```

## Initialization
Before you can fetch ads from Adfly, you should first initalize the Adfly SDK when your app started. To do so, we suggest to call SDK’s start() method first step:

* appkey: String
* appSecret: String
* start success，error == nil

``` swift 
XBInterActiveAdManager.shared.start(appKey: appKey, appSecret: appSecret, complete: { (error) in
            if error == nil {
                print("start success")
            }
        })

```
  
# Show Interactive

Interactive ad allows users play games and get kinds of coupons advertisers offered.

To show inertacive ad, you need to call showAd() as belows.

* widgetId: widget id
* scale: CGFloat default 1， ad size is (100 * scale, 100 * scale), it should >= 0.2, because the size of close button is (20, 20)
* origin: default: CGPoint.init(x: customView!.bounds.width - viewWidth - 10, y: customView!.bounds.height - viewWidth - height * 0.1) 
  (OC: you can set CGPoint.init(x: -1000, y: -1000), it will be set default point)
* customView: adview's superView
* tag: adview's tag, it will be used for clear ad
* onShowAction: ad showed 
* onClickAction: ad clicked
* onCloseAction: ad closed by user
* onLoadFailed: ad load failed
* onClearAction: clear ad by code

``` swift
func show() {
        XBInterActiveAdManager.shared.showAd(widgetId: "477", "scale: 1, origin: CGPoint.init(x: 1000, y: 1000), tag: 1024, customView: self.view, onShowAction: {
            print("ad showed")
        }, onClickAction: {
            print("ad clicked")
        }, onCloseAction: {
            print("ad closed by user")
        }, onLoadFailed: { (error) in
            print("ad failed")
        }, onClearAction: {
            print("clear ad by code")
        })
    }

```

# Clear Interactive

if you want to clear ad, not closed by users, you can call this method:

* tag: adview's tag
* customView: adview's superView

```swift
func clearAd() {
        XBInterActiveAdManager.shared.clearAd(tag: 1024, customView: customView!)
    }

```