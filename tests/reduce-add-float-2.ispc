
export uniform int width() { return programCount; }



export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float v = aFOO[programIndex];
    uniform float m;
    int iv = (int)v;
    m = reduce_add((float)iv);
    RET[programIndex] = m;
}

export void result(uniform float RET[]) { 
    uniform int x = -1234;
    if (programCount == 4) x = 10;
    else if (programCount == 8) x = 36;
    else if (programCount == 16) x = 124;
    RET[programIndex] = x;
}

