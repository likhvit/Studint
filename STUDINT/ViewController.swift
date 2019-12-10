import UIKit
import CoreLocation
import MapKit

    class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
   
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            
            mapView.delegate = self
            mapView.showAnnotations(mapView.annotations, animated: false)
            
            
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
            

        let BournemouthPier = CLLocationCoordinate2D(latitude: 50.7192, longitude: 1.8808)
        let UpperGardens = CLLocationCoordinate2D(latitude: 50.726450, longitude: -1.900972)
        let NorweignWoodsCafe = CLLocationCoordinate2D(latitude: 50.721587, longitude: -1.872574)
            
        let BournemouthPierAnnotation = CustomAnnotation(coordinate: BournemouthPier, title: "Bournemouth Pier", video: URL("www.google.com"))
        let UpperGardensAnnotation = CustomAnnotation(coordinate: UpperGardens, title: "Upper Gardens", video: URL("www.google.com"))
        let NorweignWoodsCafeAnnotation = CustomAnnotation(coordinate: NorweignWoodsCafe, title: "Norweign Woods Cafe", video: URL("www.google.com"))
        
        mapView.addAnnotations([BournemouthPierAnnotation,UpperGardensAnnotation,NorweignWoodsCafeAnnotation])
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.annotation = sender as? CustomAnnotation
}
    
}

extension ViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        guard let annotation = view.annotation as? CustomAnnotation else { return }
        performSegue(withIdentifier: "Next", sender: annotation)
        mapView.deselectAnnotation(annotation, animated: true)
    }
    
    
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
print(locations.last!)
        
    }
}

