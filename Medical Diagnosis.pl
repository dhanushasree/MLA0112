symptom(flu, fever).
symptom(flu, cough).
symptom(flu, headache).

symptom(cold, sneezing).
symptom(cold, cough).
symptom(cold, runny_nose).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).

symptom(covid, fever).
symptom(covid, cough).
symptom(covid, breathing_problem).

has_symptom(dhanusha, fever).
has_symptom(dhanusha, cough).
has_symptom(dhanusha, headache).

diagnose(Person, Disease) :-
    symptom(Disease, Symptom),
    has_symptom(Person, Symptom).

show_diagnosis(Person) :-
    diagnose(Person, Disease),
    write(Person),
    write(' may have '),
    write(Disease),
    nl.