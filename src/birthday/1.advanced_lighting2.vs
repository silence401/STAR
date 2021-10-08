#version 330 core
layout (location = 0) in vec3 aPos;
//layout (location = 1) in vec3 aNormal;
//layout (location = 2) in vec2 aTexCoords;

// declare an interface block; see 'Advanced GLSL' for what these are.
out vec3 ourColor;

uniform mat4 projection;
uniform mat4 view;

void main()
{
  //  #vs_out.FragPos = aPos;
   // #vs_out.Normal = aNormal;
    // #vs_out.TexCoords = aTexCoords;
    gl_Position = projection * view * vec4(aPos, 1.0);
    ourColor = vec3(1.0f, 0.0, 0.0);
}
