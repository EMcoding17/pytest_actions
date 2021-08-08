import pytest
import app

lista = [9, 55, 61, 8, 1, 65, 2]
datos = [
	{"nombre":"Yuridia", "edad": 21},
	{"nombre":"Janeth", "edad": 22},
	{"nombre":"Fatima", "edad": 21},
	{"nombre":"Pilar", "edad": 18},
	{"nombre":"Alex", "edad": 16},
	{"nombre":"Eduardo", "edad": 15},
	{"nombre":"Felipe", "edad": 15},
	]

def test_Orden():
	assert app.Orden(lista) == [1, 2, 8, 9, 55, 61, 65]

def test_MayorEdad():
	assert app.MayorEdad(datos) == 4