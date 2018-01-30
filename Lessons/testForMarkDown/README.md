# Test

```swift
func makeViews(number num: Int) {
        viewPackage = Array<UIView>()
        
        for index in 0..<num {
            let tmpView: UIView = UIView()
	    // To add the function which can change color
            tmpView.backgroundColor = getColor(num: index)	    
            viewPackage?.append(tmpView)
        }
    }
```