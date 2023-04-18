//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        
       
        bookView(top: topPageView(), bottom: bottomPageView())
        
        
        
        
    }
}

struct topPageView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct bottomPageView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct bookView: View {
    
    @State var top: topPageView
    @State var bottom: bottomPageView
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                GeometryReader { geo in
                    Image(uiImage: UIImage(named: "bookTexture_light.png")!)
                          .resizable()
                          .scaledToFill()
                          .frame(width: geo.size.width, height: geo.size.height)
                    }
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
            .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
            .padding([.leading, .trailing, .bottom], 30)
            
            VStack {
                Spacer()
                    .frame(maxHeight: 75)
                Color(.black)
                    .opacity(0.2)
                    .frame(height: 50)
                Spacer()
            }
            
            VStack(spacing: 0) {

                VStack{
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 100)
                .background(.background)
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                
                
                VStack{
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.background)
                .cornerRadius(20)
                
            }
            .padding([.leading, .trailing, .bottom], 50)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .shadow(radius: 10)
            
            
            
            VStack {
                Spacer()
                    .frame(maxHeight: 75)
                LinearGradient(gradient: Gradient(colors: [.black.opacity(0.0), .black.opacity(0.4), .black.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
                    .frame(height: 50)
                Spacer()
            }
            
            
        }.background(.black)
        

    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

PlaygroundPage.current.setLiveView(ContentView().frame(width: 700, height: 700))

