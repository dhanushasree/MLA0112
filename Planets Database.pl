planet(mercury, rocky, 1).
planet(venus, rocky, 2).
planet(earth, rocky, 3).
planet(mars, rocky, 4).
planet(jupiter, gas_giant, 5).
planet(saturn, gas_giant, 6).
planet(uranus, ice_giant, 7).
planet(neptune, ice_giant, 8).

planet_type(Planet, Type) :-
    planet(Planet, Type, _).

planet_position(Planet, Position) :-
    planet(Planet, _, Position).