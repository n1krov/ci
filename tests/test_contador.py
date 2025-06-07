# Script para probar el contador de palabras 

from contador import contar_vocales
import pytest

def test_vocales_normales():
    """Prueba con una cadena normal."""
    assert contar_vocales("hola") == 2

def test_vocales_mayusculas():
    """Prueba con una cadena que contiene vocales mayúsculas."""
    assert contar_vocales("HOLA") == 2

def test_vocales_mixtas():
    """Prueba con una cadena que contiene vocales en mayúsculas y minúsculas."""
    assert contar_vocales("HOla MUndO") == 4

def test_vocales_sin_vocales():
    """Prueba con una cadena que no contiene vocales."""
    assert contar_vocales("xyzk01234d") == 0

def test_vocales_vacia():
    """Prueba con una cadena vacía."""
    assert contar_vocales("") == 0

def test_vocales_numeros():
    """Prueba con una cadena que contiene números y vocales."""
    assert contar_vocales("12345aeiou") == 5

def test_vocales_especiales():
    """Prueba con una cadena que contiene caracteres especiales y vocales."""
    assert contar_vocales("!@#$%^&*()aeiou") == 5

def test_vocales_acentuadas():
    """Prueba con una cadena que contiene vocales acentuadas."""
    assert contar_vocales("áéíóú") == 5

def test_vocales_acentuadas_mixtas():
    """Prueba con una cadena que contiene vocales acentuadas y normales."""
    assert contar_vocales("aáeéiíoóúu") == 8

def test_vocales_acentuadas_mayusculas():
    """Prueba con una cadena que contiene vocales acentuadas en mayúsculas."""
    assert contar_vocales("ÁÉÍÓÚ") == 5


