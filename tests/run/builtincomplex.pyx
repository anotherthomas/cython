
from cpython.complex cimport complex

def complex_attributes():
    """
    >>> complex_attributes()
    (1.0, 2.0)
    """
    cdef complex c = 1+2j
    return (c.real, c.imag)

def complex_attributes_assign():
    """
    >>> complex_attributes_assign()
    (10.0, 20.0)
    """
    cdef complex c = 1+2j
    c.cval.real, c.cval.imag = 10, 20
    return (c.real, c.imag)

def complex_cstruct_assign():
    """
    >>> complex_cstruct_assign()
    (10.0, 20.0)
    """
    cdef complex c = 1+2j
    cval = &c.cval
    cval.real, cval.imag = 10, 20
    return (c.real, c.imag)