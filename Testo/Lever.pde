class Lever extends GameObject {

  protected Hitbox hitbox; 
  private Game game;
  protected MovingPlatform child;
  private boolean on;
  
  public Lever(float x, float y, MovingPlatform child, Game game, ArrayList<PImage> img) {
    super(x, y, 100, 100, new int[] {200, 200, 255}, game, img);
    this.child = child;
    this.on = false;
  }

  public String toString() {
    return "Lever";
  }
  
  public void flip() {
    this.on = !this.on;
  }
  
  public boolean status() {
    return this.on;
  }
  
  public MovingPlatform getChild() {
    return this.child;
  }
  
  void draw(float hx, float hy, float hw, float hh) {
  //  this.image.get(0).resize(17, 0);
    image(this.image.get(0), hx, y, w, h);   
  }
  
}
