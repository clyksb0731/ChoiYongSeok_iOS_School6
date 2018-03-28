`UIKit` `Class`

# UIViewController

This provides the infrastructure for managing the views of UIKit app.

## Overview
A view controller manages a set of views that make up a portion of your app's user interface.  
This has the responsibilities of loading, disposing views, managing interaction with views and coordinating response with any appropriate data objects.  
Normally subclass of this is used instead. The instances of the subclasses are used to provide behaviors and visual appearances needed.

The main responsibilities include the following,  
- Updating the contents of the views, usually in response to changes to the underlying data.
- Responding to user interaction with views.
- Resizing views and managing the layout of the overall interface.

A viewcontroller takes part in responder chain used to handle events

Usually an app is composed of seeral view controllers as its user interfaces.  
Only the views from one view controller is visible at a time.  
To display a new set of views, the view controller may present new view controller.  
It could be also shown as a container for example, tab bar controller and navigation controller, which seems as if contains another view controller. These links shows those controllers below:
- [UINavigationController](UINavigationController.md)
- [UITabBarController](UINavigationController.md)  

## View Controller Instantiation
- by Constructor
    + with Nib
- from Storyboard
    + UIStoryboard Instance
    + Property, self.storyboard


## View Controller Transition
- Present Modally
- Segue
