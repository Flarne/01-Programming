CharacterManager characterManager;

public void setup()
{
	size(800, 800);
	characterManager = new CharacterManager(100);
}

void draw()
{
	characterManager.update();
	characterManager.draw();
}