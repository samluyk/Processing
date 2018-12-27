//CLICK to save image to location specified below
//PRESS SPACE to close the program

PImage picture;
//helps store the image
void setup()
{
  size(640, 640);
  //sets perfect square for instagram
  background(255);
  //white background (you know, for professionalism)
  selectInput("Select an image:", "fileSelected");
  //allows you to choose an image
}
//Begin hinted code
void fileSelected(File selection) {
  if (selection == null) {
    //end hinted code
    println("Selection box closed");
    //if you cancel your selection, processing prints this error in the console
  } else {
    println("User selected " + selection.getAbsolutePath());
    //if you choose a file to resize correctly, that text shows in the console
    picture = loadImage((selection.getAbsolutePath()));
    //this loads/displays the image into the set
    picture.resize(640, 0);
    //makes the image 640 pixels along the width
    //
    //imageMode(CENTER);
    //picture.center;
  }
}
void draw()
{
  background(255);
  if (picture != null) {
    image(picture,(640 - height)/2,0);
  } else {
      image(picture,0,(640 - height)/2);
    
  }
   
}

void keyPressed() {
  if (key==' ')
  //if the spacebar is pressed
  {
    exit(); 
    //the program closes
  }
}
void mousePressed() {
    saveDrawing();
}  


void saveDrawing() {
  saveFrame("E:/Programming1/saveimagehere/image-###.jpg"); 
  //C:/Users/Sam/Google Drive
  //saves an image to the specified path (will be google drive sync so it gets to cellphone essentially instantly)
}


//Import an image
//Resize to 640 on long side
//Center it
//Save as a jpg to a drive
//Close application
