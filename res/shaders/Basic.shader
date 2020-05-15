#shader vertex
#version 330

layout(location = 0) in vec4 positions;

void main()
{
    gl_Position = positions;
}

#shader fragment
#version 330 core

layout(origin_upper_left) in vec4 gl_FragCoord;
layout(location = 0) out vec4 fragColor;
vec2 fragCoord = gl_FragCoord.xy;
uniform float iTime;
uniform vec2 iResolution;
uniform vec2 iMouse;
const float MIN_DISTANCE = .0001;
const float MAX_DISTANCE = 10.;
const int MAX_ITERATIONS = 100;

vec2 uv = vec2(fragCoord.x/iResolution.x, fragCoord.y/iResolution.y);

mat3 calculateEyeRayTransformationMatrix( in vec3 ro, in vec3 ta, in float roll )
{
    vec3 ww = normalize( ta - ro );
    vec3 uu = normalize( cross(ww,vec3(sin(roll),cos(roll),0.0) ) );
    vec3 vv = normalize( cross(uu,ww));
    return mat3( uu, vv, ww );
}

float sdSegment(in vec3 p, in vec3 a, in vec3 b, in float Radius)
{
    float h = min(1., max(0.,dot(p-a,b-a)/dot(b-a,b-a)));
    return length(p-a-(b-a) * h) - Radius;
}

float map(vec3 p)
{
    float result;

    float line = sdSegment(p, vec3(0.,0.,0.), vec3(1.,1.,1.), 0.3);

    result = line;

    return result;
}

float rayMarch(in vec3 camera, in vec3 rayDirection)
{
    float distance = MIN_DISTANCE * 2.0;
    float totalDistance = 0.;
    float finalDistance = -1.;

    for (int i = 0; i < MAX_ITERATIONS; i++)
    {
        if (distance < MIN_DISTANCE) break;
        if (totalDistance > MAX_DISTANCE) break;

        vec3 currentRayPosition = camera + rayDirection + totalDistance;
        totalDistance += map(currentRayPosition);
    }

    if (totalDistance < MAX_DISTANCE)
    {
        finalDistance = totalDistance;
    }
    else
    {
        finalDistance = MAX_DISTANCE;
    }

    return finalDistance;
}

void main()
{

    fragColor = vec4(col,1.0);
}
