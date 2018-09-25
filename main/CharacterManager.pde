class CharacterManager

{
	Character[] characters;

	CharacterManager(int amount)
	{
		characters = new Character[amount];

		for(int i = 0; i < characters.length; i++)
		{
			if (i > 0 && i < characters.length)
			{
				characters[i] = new Human();
			}
			else
			{
				characters[0] = new Zombie();
			}
		}

	}

	void draw()
	{
		background(0, 0, 0, 0);

		for(int i = 0; i < characters.length; i++)
		{

			if (characters[i] instanceof Zombie)
			{
				for (int j = 0; j < characters.length; j++) 
				{
 
					boolean hasCollided = collision (characters[j].position.x,
													 characters[j].position.y,
													 characters[j].size / 2,

													 characters[i].position.x,
													 characters[i].position.y,
													 characters[i].size / 2);

					if(hasCollided)
					{
						characters[j] = new Zombie();
						println ("hej");
					}
					
				}
			}

		}

		for (int i = 0; i < characters.length; i++) 
		{
			characters[i].draw();
		}
	}	

	void update()
	{
		for(int i = 0; i < characters.length; i++)
		{
			characters[i].update();
		}
	}
}
