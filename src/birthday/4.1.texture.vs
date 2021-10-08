#version 330 core
layout (location = 0) in vec3 aPos;
//layout (location = 1) in vec3 aColor;
layout (location = 1) in vec2 aTexCoord;

//out vec3 ourColor;
out vec2 TexCoord;
uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;
uniform float time;
uniform float starttime;

vec4 scaleIt(){
	if(time - starttime < 10)
		return projection * view * vec4(aPos, 1.0);

	return projection * view * model * vec4(aPos, 1.0);

}
void main()
{
	//gl_Position = projection * view * vec4(aPos, 1.0);
	gl_Position = scaleIt();
	//ourColor = aColor;
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
}
