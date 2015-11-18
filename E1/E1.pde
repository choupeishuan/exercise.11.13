int num=10;
boolean[][] grid=new boolean[num][num];
final boolean DARK=true;
//final boolean LIGHT=!DARK;

// Number of columns and rows in the grid
int cols = num;
int rows = num;
int spacing = 20;
int i;
int j;



void setup() {
  size(200,200);
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      grid[i][j]=DARK;
      
      
    }
  }
  
  
}

void draw() {
  background(0);
  for(i=0;i<cols;i++){
    for(j=0;j<rows;j++){
      if(grid[i][j]){
       stroke(0);
       fill(50);
      }else{
       stroke(0);
       fill(255);
      }
      rect(i*spacing,j*spacing,spacing,spacing);
    }
  }

}

void mouseReleased (){
  int x = int (mouseX/spacing);
  int y = int (mouseY/spacing);

 if(x>0 && x<num-1 && y>0 && y<num-1){  
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y+1]=!grid[x][y+1];
  grid[x][y-1]=!grid[x][y-1];
 }
 //cols=0
 if(x<1 && y>0 && y<num-1){
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x][y+1]=!grid[x][y+1];
  grid[x][y-1]=!grid[x][y-1];
 }
 //cols=num-1
 if(x>num-2 && y>0 && y<num-1){
  grid[x][y]=!grid[x][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y+1]=!grid[x][y+1];
  grid[x][y-1]=!grid[x][y-1];
 }
 //rows=0
 if(y<1 && x>0 && x<num-1){
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y+1]=!grid[x][y+1];
 }
 //rows=num-1
 if(y>num-2 && x>0 && x<num-1){
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y-1]=!grid[x][y-1];
 }
 //cols=0 & rows=0
 if(x<1 && y<1){
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x][y+1]=!grid[x][y+1];
 }
 //cols=0 & rows=num-1
 if(x<1 && y>num-2){
  grid[x][y]=!grid[x][y];
  grid[x+1][y]=!grid[x+1][y];
  grid[x][y-1]=!grid[x][y-1];
 }
 //cols=num-1 & rows=0
 if(x>num-2 && y<1){
  grid[x][y]=!grid[x][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y+1]=!grid[x][y+1];
 }
 //cols=num-1 & rows=num-1
 if(x>num-2 && y>num-2){
  grid[x][y]=!grid[x][y];
  grid[x-1][y]=!grid[x-1][y];
  grid[x][y-1]=!grid[x][y-1];
 }

}
