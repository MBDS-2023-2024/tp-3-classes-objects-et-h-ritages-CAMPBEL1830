import Foundation

// Protocole Shape
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

// Classe Rectangle qui implémente le protocole Shape
class Rectangle: Shape {
    var longueur: Double
    var largeur: Double

    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
    }

    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }

    func area() -> Double {
        return longueur * largeur
    }
}

// Classe Triangle qui implémente le protocole Shape
class Triangle: Shape {
    var base: Double
    var hauteur: Double

    init(base: Double, hauteur: Double) {
        self.base = base
        self.hauteur = hauteur
    }

    func perimeter() -> Double {
        // Pour un triangle quelconque, le périmètre est la somme des longueurs des côtés
        return 0
    }

    func area() -> Double {
        // L'aire d'un triangle est (base * hauteur) / 2
        return (base * hauteur) / 2
    }
}

// Classe Circle qui implémente le protocole Shape
class Circle: Shape {
    var rayon: Double

    init(rayon: Double) {
        self.rayon = rayon
    }

    func perimeter() -> Double {
        // Le périmètre d'un cercle est 2 * π * rayon
        return 2 * Double.pi * rayon
    }

    func area() -> Double {
        // L'aire d'un cercle est π * rayon²
        return Double.pi * rayon * rayon
    }
}

// Classe Square qui implémente le protocole Shape
class Square: Shape {
    var côté: Double

    init(côté: Double) {
        self.côté = côté
    }

    func perimeter() -> Double {
        // Le périmètre d'un carré est 4 * côté
        return 4 * côté
    }

    func area() -> Double {
        // L'aire d'un carré est côté * côté
        return côté * côté
    }
}

// Création d'une liste contenant des formes géométriques
var listeFormes: [Shape] = [
    Circle(rayon: 3),
    Circle(rayon: 4),
    Circle(rayon: 5),
    Rectangle(longueur: 2, largeur: 3),
    Rectangle(longueur: 4, largeur: 5),
    Square(côté: 2),
    
]

// Parcours de la liste et affichage des informations pour chaque forme
for forme in listeFormes {
    if let rectangle = forme as? Rectangle {
        print("Je suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()) et mon périmètre est \(rectangle.perimeter())")
    } else if let triangle = forme as? Triangle {
        print("Je suis un triangle, ma base est \(triangle.base), ma hauteur est \(triangle.hauteur), ma surface est \(triangle.area()) et mon périmètre est \(triangle.perimeter())")
    } else if let cercle = forme as? Circle {
        print("Je suis un cercle, mon rayon est \(cercle.rayon), ma surface est \(cercle.area()) et mon périmètre est \(cercle.perimeter())")
    } else if let square = forme as? Square {
        print("Je suis un carré, mon côté est \(square.côté), ma surface est \(square.area()) et mon périmètre est \(square.perimeter())")
    }
}
