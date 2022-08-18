import Foundation

extension ViewController {
	
	func setupViews() {
		collectionView.backgroundColor = .systemPink
		collectionView.contentInset = .init(top: 15, left: 20, bottom: 15, right: 20)
		collectionView.layer.cornerRadius = 30
		collectionView.layer.masksToBounds = true
		collectionView.register(
			CollectionViewCell.self,
			forCellWithReuseIdentifier: String(describing: CollectionViewCell.self)
		)
		collectionView.delegate = self
		collectionView.dataSource = self
	}
	
}
