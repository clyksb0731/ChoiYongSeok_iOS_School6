
+ navigationBar
    - topItem
        * title, `nvaigationItem이 없을 때 게속해서 stacked view controller 에 적용되는지 확인 해 볼것!`  
        String 값으로서 pushViewController된 view controller에서 <kbd><</kbd> 에 이어 붙는 값
        * titleView  
        UIView를 갖는 Property로서 UIImageView를 직접 대입해도 무방함
    - tintColor  
    topItem 등에 적용됨, `nvaigationItem이 없을 때 게속해서 stacked VC에 적용되는지 확인 해 볼것!`  
    example code:  
    ```swift
    self.navigationController?.navigationBar.tintColor = .cyan
    ```
    - barTintColor  
    navigationBar 배경에 적용  
    example code:  
    ```swift
    self.navigationController?.navigationBar.barTintColor = .black
    ```

+ navigationItem
    - leftBarButtonItem
        * tintColor  
        navigationItem의 해당 barButtonItem의 tint의 색이 지정되지 않으면 navigationBar의 tintColor가 적용됨  
        example code:
        ```swift
        self.navigationItem.leftBarButtonItem?.tintColor = .blue
        ```

    - rightBarButtonItem
        * tintColor
    - backBarButtonItem  
    navigationItem을 소유하고 있는 view controller가 pushViewController하는 view controller에 <kbd><</kbd>와 이어 붙여지는 일련의 String 값을 정하는 것  
    navigationBar의 topItem 보다 User가 바라보는 관점에서 우선순위가 높아 이것이 지정되면 topItem이 보이지 않는다.  
    exmaple code:  
    ```swift
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back Item", style: .plain, target: nil, action: nil)
    ```
        * tintColor
    
    - titleView  
    UIView를 갖는 Property로서 UIImageView를 직접 대입해도 무방함

> navigationController.nvaigationBar < navigationItem (둘다 존재한다면 네비게이션 아이템이 우선권 있음) 
> tintColor는 해당 객체의 값이 nil 값이 아닐 때 적용 됨
