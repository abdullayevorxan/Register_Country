//

//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
//    var azeTitle: [String] = ["Azerbaijan"]
//    var azeImg: [String] = ["Azerbaijan Flag"]
    
    let countries = [Country(countryName: "Azerbaijan",
                            countryImage: "Azeflag",
                            cities: [City(cityName: "Baku", cityText: .Baku, cityImage: "Baku"),
                                     City(cityName: "Mingechaur", cityText: .Mingechaur, cityImage: "Mingechaur"),
                                     City(cityName: "Ganja", cityText: .Ganja, cityImage: "Ganja"),
                                     City(cityName: "Shusha", cityText: .Shusha, cityImage: "Shusha")]),
                     Country(countryName: "Spain",
                            countryImage: "Spainflag",
                            cities: [City(cityName: "Madrid", cityText: .Madrid, cityImage: "Madrid"),
                                     City(cityName: "Barcelona", cityText: .Barcelona, cityImage: "Barcelona"),
                                     City(cityName: "Seville", cityText: .Seville, cityImage: "Seville"),
                                     City(cityName: "Valencia", cityText: .Valencia, cityImage: "Valencia")]),
                     Country(countryName: "Italy",
                            countryImage: "Italyflag",
                             cities: [City(cityName: "Rome", cityText: .Rome, cityImage: "Rome"),
                                      City(cityName: "Milan", cityText: .Milan, cityImage: "Milan"),
                                      City(cityName: "Venice", cityText: .Venice, cityImage: "Venice"),
                                      City(cityName: "Florence", cityText: .Florence, cityImage: "Florence")]),
                     Country(countryName: "Poland",
                            countryImage: "Polandflag",
                             cities: [City(cityName: "Warsaw", cityText: .Warsaw, cityImage: "Warsaw"),
                                      City(cityName: "Krakow", cityText: .Krakow, cityImage: "Krakow"),
                                      City(cityName: "Poznan", cityText: .Poznan, cityImage: "Poznan"),
                                      City(cityName: "Wroclaw", cityText: .Wroclaw, cityImage: "Wroclaw")])]
                             
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Countries"
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AzeCollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 25
        cell.azeImg.image = UIImage(named: countries[indexPath.row].countryImage ?? "")
        cell.azeTitle.text = countries[indexPath.row].countryName
//        cell.azeTitle.text = azeTitle [indexPath.row]
//        cell.azeImg.image = UIImage(named: azeImg[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = view.frame.width/2 - 10
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(identifier: "ViewControllerCity") as! ViewControllerCity
        controller.cities = countries[indexPath.row].cities
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
        
        
        
        
//        configureCollectionView()
//    }
//    
//    fileprivate func configureCollectionView() {
//        collectionView.delegate = self
//        collectionView.dataSource = self
//    }
//
//}
//
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        4
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  , for: <#T##IndexPath#>)
//    }
//    

    
    

