Auto Layout is my very first project, which I completed successfully with the help of Brian Voong videos.

Brief note of all the topics which I learnt with the help of this project.

UIStack :-
They are arrays of views with a few properties. You initialize the stack view with an array of views and set a few properties: axis, distribution, fill and spacing. 
The stack view manages the layout of its sub views and automatically applies layout constraints for you. That means the sub views are ready to adapt to different screen sizes.

UICollectionView:-
An object that manages an ordered collection of data items and presents them using customizable layouts. UICollectionView is the main view in which the content is displayed, similar to a UITableView. Like a table view, a collection view is a UIScrollView subclass.

class UICollectionView : UIScrollView

The collection view gets its data from the data source object, which is an object that conforms to the UICollectionViewDataSource Protocol and is provided by your app.
The collection view presents items onscreen using a cell, which is an instance of the UICollectionViewCell class that your data source configures and provides.
You normally specify a layout object when creating a collection view but you can also change the layout of a collection view dynamically. The layout object is stored in the collectionViewLayout property. 
take a look at these components one-by-one:

The data source, UICollectionViewDataSource, returns information about the number of items in the collection view and their views.
The delegate, UICollectionViewDelegate, is notified when events happen, such as cells being selected, highlighted, or removed.
UICollectionViewFlowLayout also has a delegate protocol — UICollectionViewDelegateFlowLayout. It allows you to tweak the behavior of the layout, to configure things like the cell spacing, scroll direction, and more.

Lazy Property: -
A lazy stored property is a property whose initial value is not calculated until the first time it is used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
Lazy rules:
You can’t use lazy with let.
You can’t use it with computed properties. Because, a computed property returns the value every time we try to access it after executing the code inside the computation block.
You can use lazy only with members of struct and class.
Lazy variables are not initialized atomically and so is not thread safe.


Model View Controller: -
MVC is a software development pattern made up of three main objects:
The Model is where your data resides. Things like persistence, model objects, parsers, managers, and networking code live there.
The View layer is the face of your app. Its classes are often reusable as they don’t contain any domain-specific logic. For example, a UILabel is a view that presents text on the screen, and it’s reusable and extensible.
The Controller mediates between the view and the model via the delegation pattern. In an ideal scenario, the controller entity won’t know the concrete view it’s dealing with. Instead, it will communicate with an abstraction via a protocol. A classic example is the way a UITableView communicates with its data source via the UITableViewDataSource protocol.




Page Controller
A container view controller that manages navigation between pages of content, where each page is managed by a child view controller.
The data source for a page view controller is responsible for providing the content view controllers on demand and must conform to the UIPageViewControllerDataSourceprotocol. 
The delegate object—an object that conforms to the UIPageViewControllerDelegate protocol—provides some appearance-related information and receives notifications about gesture-initiated transitions.
