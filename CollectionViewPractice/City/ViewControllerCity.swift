

import UIKit

class ViewControllerCity: UIViewController {
    
    var cities: [City]?
    var cityName: [String]?
//    var cities: [String]? = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
        
    }

    
}

extension ViewControllerCity: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities?.count ?? 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cityCell", for: indexPath) as! cityCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 25
        let city = cities?[indexPath.row]
        cell.bakuImg.image = UIImage(named: city?.cityImage ?? "")
        cell.bakuTitle.text = city?.cityName

   
        return cell
        
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller1 = self.storyboard?.instantiateViewController(identifier: "controllerCityInfo") as! controllerCityInfo
        if let city = cities?[indexPath.row] {
            //        controller1.cityName = cities?[indexPath.row].cityName
            controller1.cityName = city.cityName
            controller1.cityImageName = city.cityImage
            self.navigationController?.pushViewController(controller1, animated: true)
        }
    }
}

