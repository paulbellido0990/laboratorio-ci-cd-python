from app import saludo

def test_saludo():
    assert saludo("Paul") == "¡Hola, Paul desde Python!"