def contar_vocales(cadena: str) -> int:
    """Cuenta cuántas vocales hay en una cadena dada."""
    vocales = "aeiouAEIOUáéíóúÁÉÍÓÚ"
    return sum(1 for c in cadena if c in vocales)

