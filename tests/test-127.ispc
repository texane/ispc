
export uniform int width() { return programCount; }


export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex&3];
    RET[programIndex] = reduce_add(a) * 4 / programCount;
}


export void result(uniform float RET[]) {
    RET[programIndex] = 10;
}
