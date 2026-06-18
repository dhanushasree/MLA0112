% Q27 DB with Name and DOB

dob(dhanusha, date(12, may, 2005)).
dob(suguna, date(10, june, 2004)).
dob(rahul, date(5, march, 2003)).
dob(priya, date(20, august, 2005)).

find_dob(Name, DOB) :-
    dob(Name, DOB).