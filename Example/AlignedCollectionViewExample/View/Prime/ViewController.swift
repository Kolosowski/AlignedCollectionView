import UIKit
import AlignedCollectionView

final class ViewController: UIViewController {
	
	// MARK: - Stored Properties - Data
	
	let data: [String] = [
		"We",
		"are",
		"really",
		"exited",
		"to",
		"introduce",
		"you",
		"this",
		"library"
	]
	
	// MARK: - Stored Properties - Views
	
	let collectionView: AlignedCollectionView = {
		let layout = AlignedCollectionViewFlowLayout()
		layout.alignment = .right
		layout.isAutomaticItemSize = true
		layout.minimumInteritemSpacing = 15
		layout.minimumLineSpacing = 20
		return AlignedCollectionView(layout)
	}()
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupViews()
		setupLayout()
	}
	
}
