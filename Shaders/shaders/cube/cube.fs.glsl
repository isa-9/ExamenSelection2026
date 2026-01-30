#version 330 core

in vec3 FragPos;
in vec3 Normal;

out vec4 FragColor;

uniform float timeElapsed;
uniform vec3 viewPos;
uniform vec3 topColor;
uniform vec3 bottomColor;

void main()
{
    // TODO: Finish the fragment shader implementation.
    // Use the FragPos.y to mix between the topColor and bottomColor.
    // Start with a normal vertical gradient from bottom to top.
    // That will then change based on timeElapsed to create a color changing effect.

    vec3 color = mix(bottomColor, topColor, 1.0);

    FragColor = vec4(color, 1.0);
}
