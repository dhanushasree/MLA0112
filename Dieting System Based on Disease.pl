diet(diabetes, 'Avoid sugar, eat vegetables, whole grains and high fiber food').
diet(bp, 'Reduce salt, avoid oily food, eat fruits and vegetables').
diet(obesity, 'Eat low calorie food, avoid junk food and do regular exercise').
diet(anemia, 'Eat iron rich foods like spinach, dates and beans').
diet(fever, 'Drink more water, eat light food and take rest').

suggest_diet(Disease) :-
    diet(Disease, Advice),
    write('Suggested diet: '),
    write(Advice).