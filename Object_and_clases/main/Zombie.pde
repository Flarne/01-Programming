class Zombie extends Character

{
	// Alla Zombier får random fart och riktning
	public Zombie()
	{
		super();
		velocity.x = random(-1, 1);
		velocity.y = random(-1, 1);
	}

	public Zombie(float x, float y)
	{
		super(x, y);
		velocity.x = random(-1, 1);
		velocity.y = random(-1, 1);
	}

	// När Zombie tar Human blir riktning och fart på zombie random, farten minskar.
	public Zombie(float x, float y, float vx, float vy)
	{
		super(x, y, vx, vy);
		velocity.x = random(-1, 1);
		velocity.y = random(-1, 1);
	}

	void draw()
	{
		fill(40, 183, 60);
		ellipse(position.x, position.y, size, size);
	}
}
