
export uniform int width() { return programCount; }

export void f_f(uniform float RET[], uniform float aFOO[]) {
    float a = aFOO[programIndex]; 
    uniform int pack[2+programCount] = 0;
    uniform int count = 0;
    if ((int)a & 1)
        count += packed_store_active(pack, 2, a);
    RET[programIndex] = count;
}

export void result(uniform float RET[]) {
    RET[programIndex] = programCount/2;
}
