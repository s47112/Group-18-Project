//set the number of points you'll 
//most likely have, say 1000, and always display with that much data. 
//If you have too little or too much, just adjust it before sending it to graph. 
//This way you'll always have a set number. 
//From here what you do is the following:

//pushMatrix();
//scale(widthOfGraph/1000, heightOfGraph/numberOfPointsUp);
//beginShape(LINES);
//for (int i = 0; i < 1000; i++) {
//    vertex(x0,y0);
//    vertex(x1,y1);
//endShape();
//popMatrix();

//This will create all your lines in a single drawing operation meaning you'll 
//save a lot of opening and closing shapes. 
//You are also using a stack matrix to use the scale operation 
//to adjust the displaying size of your canvas
