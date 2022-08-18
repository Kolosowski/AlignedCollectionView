# UICenteredCollectionView

Allows you to center collection items with automatic/configured sizes also dynamically calculates self size.


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

Add the following to your *Cartfile*
```
github "Kolosowski/UICenteredCollectionView"
```

## Usage
Created just like simple UICollectionView object where you can perform custom setup to layout or view.
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
