Class {
	#name : 'RsCircularMenu',
	#superclass : 'WAComponent',
	#category : 'NakedObjectsWEB-components',
	#package : 'NakedObjectsWEB',
	#tag : 'components'
}

{ #category : 'rendering' }
RsCircularMenu >> renderContentOn: html [

	super renderContentOn: html.
	html html: '<div class="container">
     <ul id="menu">
           <!-- open-menu id for click event -->
            <a class="menu-button icon-plus" id="open-menu" href="#menu" title="Show navigation"></a>
            <a class="menu-button icon-minus" href="#0" title="Hide navigation"></a>
            <li class="menu-item">
                <a href="#menu">
                    <span style="color:white">Keys</span>
                </a>
            </li>
            <li class="menu-item">
                <a href="#menu">
                    <span style="color:white">Tags</span>
                </a>
            </li>
            <li class="menu-item">
                <a href="#menu">
                    <span style="color:white">Teams</span>
                </a>
            </li>
            <li class="menu-item">
                <a href="#menu">
                    <span style="color:white">Taco''</span>
                </a>
            </li>
        </ul>
  
  <div class="content">
    <div class="text">
      <h3> Click circle!</h3>
      <h6>Tada...!</h6>
    </div>
  </div>
</div>'
]
