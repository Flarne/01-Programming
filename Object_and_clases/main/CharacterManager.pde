class CharacterManager

{
	Character[] characters;
	int numberOfCharacters;
	int zombiesAllover;
	int s;
	int humanLeft = 99;

	// körs för att skapa 99 humans och 1 zombie som start
	CharacterManager (int amount)
	{
		characters = new Character[amount];

		for (int i = 0; i < characters.length; i++)
		{

			//numberOfCharacters++;
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

		if(zombiesAllover < 99)
		{
			s = millis();

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
							numberOfCharacters++;
							zombiesAllover++;
							humanLeft--;

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

				if (numberOfCharacters < 99)
				{
					characters[i].draw();
				}

			}

		}
		else
		{
			gameOver();
		}

		textSize(15);
		fill(255, 0, 0);
		text (humanLeft + " Humans Left", 660, 780);
	}	

	void update()
	{

		for (int i = 0; i < characters.length; i++)
		{
			characters[i].update();
		}

	}

	void gameOver()
    {
        background (0, 0, 0, 0);
        textSize (40);
        fill (255, 0, 0);
        textAlign(CENTER, CENTER);
        text ("Game Over!", width / 2, height / 2);
        textSize (20);
        fill (0, 255, 0);
        textAlign(CENTER, 550);
        text ("Zombies took over the world in \n" + s * 0.001 + " seconds", width / 2, 450);
    }
}


