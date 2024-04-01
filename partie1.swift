  // Classe Rectangle
class Rectangle {
    var longueur: Double
    var largeur: Double
    static var nombreRectangles = 0

    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
        Rectangle.nombreRectangles += 1
    }

    // Méthode pour calculer le périmètre du rectangle
    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }

    // Méthode pour calculer l'aire du rectangle
    func area() -> Double {
        return longueur * largeur
    }
}

// Création de 3 rectangles
let rectangle1 = Rectangle(longueur: 5, largeur: 3)
let rectangle2 = Rectangle(longueur: 4, largeur: 6)
let rectangle3 = Rectangle(longueur: 7, largeur: 2)

// Liste contenant les rectangles
var listeRectangles = [rectangle1, rectangle2, rectangle3]

// Ordonner la liste en fonction de la surface
listeRectangles.sort { $0.area() < $1.area() }

// Affichage du nombre de rectangles créés
print("Nombre de rectangles créés : \(Rectangle.nombreRectangles)")
