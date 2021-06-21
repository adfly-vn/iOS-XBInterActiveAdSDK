
## adfly激励视频和插屏 JS调用native 相关回调接口 
* (ios) window.webkit.messageHandlers.adfly.postMessage({
action: "adfly", method: jsonParams
});
* (android) adfly.jsbridge(jsonParams)


* jsonparams参数格式

```json
{
    "method": "",
    "params": {
		actionName: ""
    },
    "callback": ""
}


```
* json参数说明

| key | 说明 | 取值  |
| :--: | :--: |:--: |
| method | 调用方法 | adCallBack |
| params | 调用参数 | actionName 回调方法名 （adDidClick: 广告被点击回调 adDidShow: 广告加载展示成功回调 rewardedVideoAdComplete: 激励视频任务完成回调（激励视频特有））|
| callback | 结果回调js的方法 | |


## adfly激励视频回调
* 请求激励视频广告成功

```
 func rewardedVideoAdDidLoad(_ rewardVideo: XBRewardVideoAd)
```


* 请求激励视频广告失败

```
 func rewardedVideoAd(_ rewardVideo: XBRewardVideoAd, didFailWithError error: XBError)
```
*参数说明

| key | 说明 | 取值  |
| :--: | :--: |:--: |
| XBError | 失败error | code, description | |


* 广告即将关闭

```
 func rewardedVideoAdWillClose(_ rewardVideo: XBRewardVideoAd)
```

* 广告已经关闭

```
 func rewardedVideoAdDidClose(_ rewardVideo: XBRewardVideoAd)
```

* 广告开始显示

```
 func rewardedVideoAdBeginShow(_ rewardVideo: XBRewardVideoAd)
```

* 广告显示完成

```
 func rewardedVideoAdDidShow(_ rewardVideo: XBRewardVideoAd, didFailWithError error: XBError?)
```
| key | 说明 | 取值  |
| :--: | :--: |:--: |
| XBError | 失败error | code, description （如果error为nil， show success）| |

* 广告落地页被点击

```
 func rewardedVideoAdDidClick(_ rewardVideo: XBRewardVideoAd)
```

* 激励视频广告完成任务

```
 func rewardedVideoAdComplete(_ rewardVideo: XBRewardVideoAd)
```


## adfly插屏回调
* 请求插屏广告成功

```
 func interstitialAdDidLoad(_ rewardVideo: XBInterstitialAd)
```


* 请求插屏广告失败

```
 func interstitialAd(_ rewardVideo: XBInterstitialAd, didFailWithError error: XBError)
```
*参数说明

| key | 说明 | 取值  |
| :--: | :--: |:--: |
| XBError | 失败error | code, description | |


* 插屏广告即将关闭

```
 func interstitialAdWillClose(_ rewardVideo: XBInterstitialAd)
```

* 插屏广告已经关闭

```
 func interstitialAdDidClose(_ rewardVideo: XBInterstitialAd)
```

* 插屏广告开始显示

```
 func interstitialAdBeginShow(_ rewardVideo: XBInterstitialAd)
```

* 插屏广告显示完成

```
 func interstitialAdDidShow(_ rewardVideo: XBInterstitialAd, didFailWithError error: XBError?)
```
| key | 说明 | 取值  |
| :--: | :--: |:--: |
| XBError | 失败error | code, description （如果error为nil， show success）| |

* 插屏广告落地页被点击

```
 func interstitialAdDidClick(_ rewardVideo: XBInterstitialAd)
```


