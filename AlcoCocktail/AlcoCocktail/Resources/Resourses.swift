import UIKit

enum Resources {
    // Enum для названий кастомных цветов
    enum Colors {
        static var green  = "green"
        static var red    = "red"
        static var white  = "white"
        static var dark   = "dark"
        static var peach  = "peach"
        static var yellow = "yellow"
        static var orange = "orange"
    }
    // Enum для tab bar
    enum Strings {
        enum TabBar {
            static var alcoCocktail    = "Alcococktail"
            static var nonAlcoCocktail = "nonAlcoCocktail"
            static var favorite        = "Favorite"
        }
    }
    // Enum для tab bar system image
    enum Image {
        enum TabBar {
            static var alcoCocktail     = "wineglass"
            static var nonAlcoCocktail  = "takeoutbag.and.cup.and.straw"
            static var favorite         = "heart.circle"
        }
        enum SystemIcon {
            static var backButton = "arrowshape.backward.circle.fill"
        }
    }
    // Enum шрифты
    enum Fonts {
        static var cormorantBold     = "Cormorant-Bold"
        static var cormorantLight    = "Cormorant-Light"
        static var cormorantMedium   = "Cormorant-Medium"
        static var cormorantRegular  = "Cormorant-Regular"
        static var cormorantSemiBold = "Cormorant-SemiBold"
    }
}
