class CharacterManager

{
	Character[] characters;

	// körs för att skapa 99 humans och 1 zombie som start
	CharacterManager (int amount)
	{
		characters = new Character[amount];

		for (int i = 0; i < characters.length; i++)
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

	// Körs tills villkoren är uppfyllda
	void draw()
	{
		background(0, 0, 0, 0);

		// Kontrollerar alla characters
		for (int i = 0; i < characters.length; i++)
		{

			if (characters[i] instanceof Zombie)
			{

				// Kontrollerar om zombie är tillräckligt nära en human
				for (int j = 0; j < characters.length; j++) 
				{
					boolean hasCollided = collision (characters[j].position.x,
													 characters[j].position.y,
													 characters[j].size / 2,

													 characters[i].position.x,
													 characters[i].position.y,
													 characters[i].size / 2);

					// Om zombie har tagit human förvandlas den till zombie
					if (hasCollided && characters[j] instanceof Human)
					{
						characters[j] = new Zombie(characters[j].position.x, 
												   characters[j].position.y,
												   characters[j].velocity.x,
												   characters[j].velocity.y);
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

		for (int i = 0; i < characters.length; i++)
		{
			characters[i].update();
		}

	}

}
