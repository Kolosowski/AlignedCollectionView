# AlignedCollectionView

`AlignedCollectionView` allows you to align items left, center or right. You can align items of any sizes (automatic or custom size). Collection calculates self size depends on content size and edge insets (free to use custom size) and handles vertical scroll.

![home](https://user-images.githubusercontent.com/51852330/185559041-895e9a8a-441d-4dc3-9d1c-e4490a5e2240.png)


## Requirements
* Swift 5
* iOS 13 or later


## Installation
* Swift Package Manager

Open *XCode* and then clic **File** -> **Add Packages...**. In search field enter repository URL then tap **Copy Dependency** button.

* Cocoa Pods

Add the following line to your *Podfile* then run `pod install`
```
pod "AlignedCollectionView"
```

* Chartage

Add the following line to your *Cartfile* then run `carthage update --use-xcframeworks`
```
github "Kolosowski/AlignedCollectionView"
```

## Usage
Created just like simple `UICollectionView` object where you can perform custom setup to layout or view.
```swift
import AlignedCollectionView

let layout = AlignedCollectionViewFlowLayout()
layout.alignment = .right
layout.isAutomaticItemSize = true
layout.minimumInteritemSpacing = 15
let collectionView = AlignedCollectionView(layout)
```

or use simplified version with default `UICollectionViewFlowLayout` values and center alignment:
```swift
import AlignedCollectionView

let collectionView = AlignedCollectionView()
```
