varying vec2 v_texcoord;

uniform vec2 resolution;
  
void main()
{

    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    
    float half_y = v_texcoord.y * resolution.y * 0.5;
    float delta = floor(half_y) - half_y;
    if (delta * delta < 0.1) { colour.rgb = vec3(0.0); }
   
    gl_FragColor = colour;
}
