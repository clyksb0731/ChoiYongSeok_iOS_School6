# Test

```swift
func makeViews(number num: Int) {
        viewPackage = Array<UIView>()
        
        for index in 0..<num {
            let tmpView: UIView = UIView()
            tmpView.backgroundColor = getColor(num: index) // To add the function which can change color    
            viewPackage?.append(tmpView)
        }
    }
```