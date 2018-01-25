# Swift
Swift snippets and usefull bits of code

## Navigation Bar - Background Colorization
```self.navigationController?.navigationBar.barTintColor  = UIColor(red: 33.0/255.0, green: 110.0/255.0, blue: 147.0/255.0, alpha: 1.0)```

## Navigation Bar - Logo
```
let logo = UIImage(named: "menu-logo.png")
let imageView = UIImageView(image: logo)
imageView.contentMode = .scaleAspectFit // set imageview's content mode
self.navigationItem.titleView = imageView
```

## Navigation Bar - Add Button & link a function to it
```self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(ViewController.didTapAddItemButton(_:)))```


## Call Function when View Appear
```  
override func viewDidAppear(_ animated : Bool) {
  super.viewDidAppear(animated)
  // My function here
  
  // Or call the function when the user is moving from the parent's View
  if self.isMovingFromParentViewController {
    // My function here
  }
}
```
