import Foundation

struct CoinViewModel: Hashable {
    private let coin: Coin
    
    var name: String {
        return coin.name
    }
    
    var formattedPrice: String {
        let form = NumberFormatter()
        form.numberStyle = .currency
        
        guard let price = Double(coin.price), let formP = form.string(from: NSNumber(value: price)) else { return "" }
        return formP
    }
    
    var displayText: String {
        return name + " - " + formattedPrice
    }
    
    init(_ coin: Coin) {
        self.coin = coin
    }
}
