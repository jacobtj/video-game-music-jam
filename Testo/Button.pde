abstract class Button extends GameObject {
  float x;
  float y;
  float w;
  float h;
  //public boolean clicked = false;
  abstract void action();
  
  public Button(float bx, float by, float bw, float bh, Game game, ArrayList<String> img) {  
    super(bx, by, bw, bh, new int[] {0, 255, 0}, game, img);
    this.x = bx;
    this.y = by;
    this.w = bw;
    this.h = bh; 
  }
  
  void draw(float hx, float hy, float hw, float hh) {
    image(this.image.get(0), hx, y, w, h);   
  }
  
  void update(float dt) {
    if (clicked) {
      boolean xBool = mouseX > x && mouseX < x + w;
      boolean yBool = mouseY > y && mouseY < y + h;
      if (xBool && yBool) {
        action();
        System.out.print(clicked);
      }
    }
    super.update();
  }
  
 
  
}