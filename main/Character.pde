class Character
{
    // 
    PVector position;
    PVector velocity;

    int size = 20;

    // costruktor 
    public  Character()
    {
        position = new PVector();
        position.x = random(0, width);
        position.y = random(0, height);

        velocity = new PVector();
        velocity.x = random(10) - 5;
        velocity.y = random(10) - 5;
    }

    // construktor
    public Character(float x, float y)
    {
        position = new PVector(x, y);

        velocity = new PVector(x, y);
        velocity.x = random(10) - 5;
        velocity.y = random(10) - 5;
    }

    // Funktion som gör att Humans och Zombies inte stutsar på sidorna
    // och stutsar bara uppe och nere
    void update()
    {
        position.x += velocity.x;
        position.y += velocity.y;

        if(position.x > width)
        {
            position.x = 0;
        }

        else if (position.x < 0) 
        {
            position.x = width;    
        }

        else if ((position.y > height) || (position.y < 0)) 
        {
            velocity.y *= - 1;
        }
    }

    // Funktion som ritar ut alla Karaktärerna
    void draw()
    {
        fill(149, 133, 94);
        ellipse(position.x, position.y, size, size);
    }
}
