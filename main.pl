:- use_module(weather_data).
:- use_module(activity).

main :- 
    get_city_information(City, State, CityTerm),
    find_weather(CityTerm, State),
    resolve_operator(City, Operator),
    get_activity_information(Type), nl,
    writeln('We search the follow activities in our base:'),
    find_activity(Type, Operator).

find_activity(Type, Operator) :-
    activity(Activity, Type, Operator, 25),
    term_to_atom(Activity, ActivityAtom),
    writeln(ActivityAtom), fail.

get_city_information(City, State, CityTerm) :- 
    writeln('Hellooo!! Welcome to WEATHER ACTIVITY ADVISOR :)'), nl,
    writeln('We need to know where are you to recomend an activity for you...'),
    writeln('So, please enter the city name:'),
    read(CityTerm),
    term_string(CityTerm, City),
    writeln('Now, please enter the state initials:'),
    read(State),
    writeln('Just a second, we a retrieve the weather informations from a server...'), nl.

get_activity_information(Type) :-
    writeln('Just answer if you are in group or not...'),
    writeln('Please, enter [group] or [singular]:'),
    read(Type).

resolve_operator(City, Operator) :-
    listing(weather),
    retract(weather_data:weather(Temp, _, City, Description)),
    write_city_information(City, Description),
    operator(Temp, 25, Operator).

write_city_information(City, Description) :-
    write('The weather condition in '),
    write(City),
    write(' is '),
    writeln(Description), nl.

operator(X, Y, >) :- X > Y, !.
operator(X, Y, <) :- X < Y, !.


