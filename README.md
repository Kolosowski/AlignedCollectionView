# UICenteredCollectionView

`UICenteredCollectionView` allows you to center items of any sizes (automatic or custom size), also it calculates self size depends on items size and edge insets (free to use custom size) and handles vertical scroll.

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
pod "UICenteredCollectionView"
```

* Chartage

Add the following to your *Cartfile* then run `carthage update --use-xcframeworks`
```
github "Kolosowski/UICenteredCollectionView"
```

## Usage
Created just like simple `UICollectionView` object where you can perform custom setup to layout or view.
```swift
import UICenteredCollectionView

let layout = UICenteredCollectionViewFlowLayout(
	interItemSpacing: 15,
	lineSpacing: 25,
	isAutomaticItemSize: true
)
let collectionView = UICenteredCollectionView(layout)
```

or use simplified version with default UICollectionViewFlowLayout values:
```swift
import UICenteredCollectionView

let collectionView = UICenteredCollectionView()
```
