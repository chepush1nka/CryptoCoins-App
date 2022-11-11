
import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = CoinListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.coinViewModels, id: \.self) { coinViewModel in
                Text(coinViewModel.displayText)
            }.onAppear() {
                self.viewModel.fetchCoins()
            }.navigationBarTitle("Coins")
        }
    }
}
