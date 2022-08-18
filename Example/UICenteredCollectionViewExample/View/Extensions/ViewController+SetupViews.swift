import Foundation

extension ViewController {
	
	func setupViews() {
		collectionView.backgroundColor = .systemPink
		collectionView.register(
			CollectionViewCell.self,
			forCellWithReuseIdentifier: String(describing: CollectionViewCell.self)
		)
		collectionView.delegate = self
		collectionView.dataSource = self
	}
	
}
