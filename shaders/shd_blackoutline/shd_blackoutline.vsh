attribute vec3 in_Position; // (x, y, z)
//attribute vec4 in_Colour; // (r, g, b, a)
attribute vec2 in_TextureCoord; // (u, v)

varying vec2 v_vTexcoord;
//varying vec4 v_vColour;
varying vec3 v_vPosition;
uniform vec2 u_Texel;

void main() {
	vec4 object_space_pos = vec4(in_Position, 1.0);
	gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

	//v_vColour = in_Colour;
	v_vTexcoord = in_TextureCoord;
	v_vPosition = in_Position;
}