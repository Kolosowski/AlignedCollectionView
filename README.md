# UICenteredCollectionView

`UICenteredCollectionView` allows you to center items any sizes (automatic or custom size), also it calculates self size depends on items size and edge insets and handles vertical scroll.


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
