# StrideClone
Stride Health app home page clone(SwiftUI)

***App Demo***

<img src="Images/demo.gif" height="400">

***Production app screenshots(for reference)***

<img src="Images/screenshots.png" height="400">

***Demo Highlights***

- Full recreation of all home screen elements
- All elements are reusable(no hard coded values) and populated with data obtained from a simulated API call
- Each benefit/deal card launches corresponding link in browser

***Code Highlights***

- Custom modifiers used to prevent repeated code(ex. HomeHeaderTextStyle)
- Custom shape created for the curvature header design
- MVVM architecture leveraging SwiftUI's @EnvironmentObject
- Heavy use of abstraction to prevent any view's body from getting too large and unreadable
