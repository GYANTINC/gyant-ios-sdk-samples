Gyant iOS SDK
==================

![Logo](https://gyant.com/wp-content/uploads/2018/10/Gyant.Logotype.HorizontalLeft@2x-1.png)

# About

GYANT combines messaging, AI, and medical experts to radically improve the diagnosis and treatment of non-urgent conditions. GYANT makes treatment faster, more effective & more delightful. Our purpose is to transform healthcare from the outside in — to create a new care standard for everyone.

# Requirements
 - iOS 10+
 - Xcode 10.2.1+

# Setup using CocoaPods

Add Gyant repo:

```
pod repo add gyant-podspecs git@github.com:GYANTINC/gyant-podspecs.git
```

Add Gyant Specs source to your Podfile in the following order:

```
source 'git@github.com:GYANTINC/gyant-podspecs.git'
source 'https://github.com/CocoaPods/Specs.git'
```

**Make sure gyant-podspecs source is the first one**

Add GyantChatSDK pod to your app target.

```
pod 'GyantChatSDK', '~> 1.0.6'
```

Install the pod.

```
pod install
```

**Copyright © 2019 GYANT.com, Inc. All rights reserved.**

