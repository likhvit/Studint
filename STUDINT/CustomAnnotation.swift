import MapKit

//this part is the location section
//it helps my app work out where places are by using coordinates and annotating them yourself (self.coordinate and self.title)
// this class is custom annotation
class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var video: URL
    
    init(coordinate: CLLocationCoordinate2D, title: String, video: URL) {
        self.coordinate = coordinate
        self.title = title
        self.video = video
}

}
