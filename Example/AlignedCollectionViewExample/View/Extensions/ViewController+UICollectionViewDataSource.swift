import UIKit

extension ViewController: UICollectionViewDataSource {
	
	func collectionView(
		_ collectionView: UICollectionView,
		numberOfItemsInSection section: Int
	) -> Int {
		data.count
	}
	
	func collectionView(
		_ collectionView: UICollectionView,
		cellForItemAt indexPath: IndexPath
	) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(
			withReuseIdentifier: String(describing: CollectionViewCell.self),
			for: indexPath
		) as! CollectionViewCell
		
		cell.label.text = data[indexPath.item]
		
		return cell
	}
	
}
