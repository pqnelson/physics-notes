
/* http://dlang.org/class.html */
class matrix {
  private real M[][];

  matrix opMul(matrix);
  string toTex()
  {
    string ret = "\begin{bmatrix}";
    // do stuff
    ret += "\end{bmatrix}";
    return ret;
  }
}