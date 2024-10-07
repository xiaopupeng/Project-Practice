import SwiftUI
import PlaygroundSupport

struct MyView: View{
    var body: some View{
        VStack{
            Text("🤓")
                .font(.system(size:100))
            Text("Nerdy")
                .font(.system(size:36))
                .foregroundColor(.indigo)
        }
        .frame(width: 400, height: 300)
        .background(Color.orange)
    }
}

PlaygroundPage.current.setLiveView(MyView())
