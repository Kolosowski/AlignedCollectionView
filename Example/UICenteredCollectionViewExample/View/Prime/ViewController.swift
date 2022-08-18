import UIKit
import UICenteredCollectionView

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
	
	let collectionView: UICenteredCollectionView = .init(
		.init(isAutomaticItemSize: true)
	)
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupViews()
		setupLayout()
	}
	
}
