class Zombie extends Character

{
	public Zombie()
	{
		super();
		velocity.x = random(-1, 1);
		velocity.y = random(-1, 1);
	}

	/*public Zombie(float x, float y)
	{
		super(x, y);
		velocity.x = random(-1, 1);
		velocity.y = random(-1, 1);
	}*/

	void draw()
	{
		fill(40, 183, 60);
		ellipse(position.x - size / 2, position.y - size / 2, size, size);
	}
}
