#version 130

uniform mat4 u_modelMatrix;
uniform mat4 u_projMatrix;
uniform vec4 u_lightPos;

in vec4 vs_position;
in vec3 vs_color;
in vec4 vs_normal;

out vec3 fs_color;
out vec3 fs_light;
out vec3 fs_normal;

void main() { 
	fs_color = vs_color;
	fs_normal = normalize((u_modelMatrix * vs_normal).xyz);
	fs_light = normalize((u_lightPos - u_modelMatrix * vs_position).xyz);
    
    //built-in things to pass down the pipeline
    gl_Position = u_projMatrix * u_modelMatrix * vs_position;
}