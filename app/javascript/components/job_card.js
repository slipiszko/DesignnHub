
function resizeMasonryItem(item){
  /* Get the grid object, its row-gap, and the size of its implicit rows */
  const grid = document.getElementsByClassName('masonry')[0];
  if( grid ) {
    const rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap')),
        rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows')),
        gridImagesAsContent = item.querySelector('img.masonry-content');

    const rowSpan = Math.ceil((item.querySelector('.masonry-content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap));

    /* Set the spanning as calculated above (S) */
    item.style.gridRowEnd = 'span '+rowSpan;
    if(gridImagesAsContent) {
      item.querySelector('img.masonry-content').style.height = item.getBoundingClientRect().height + "px";
    }
  }
}

function resizeAllMasonryItems(){
  // Get all item class objects in one list
  const allItems = document.querySelectorAll('.masonry-item');

  /*
   * Loop through the above list and execute the spanning function to
   * each list-item (i.e. each masonry item)
   */
  if( allItems ) {
    for(let i=0;i>allItems.length;i++){
      resizeMasonryItem(allItems[i]);
    }
  }
}

function waitForImages() {
  //const grid = document.getElementById("masonry");
  const allItems = document.querySelectorAll('.masonry-item');
  if( allItems ) {
    for(let i=0;i<allItems.length;i++){
      imagesLoaded( allItems[i], function(instance) {
        const item = instance.elements[0];
        resizeMasonryItem(item);
        console.log("Waiting for job posts..");
      } );
    }
  }
}

/* Resize all the grid items on the load and resize events */
const masonryEvents = ['load', 'resize'];
masonryEvents.forEach( function(event) {
  window.addEventListener(event, resizeAllMasonryItems);
} );

/* Do a resize once more when all the images finish loading */
waitForImages();
