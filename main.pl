:- use_module(weather_data).
:- use_module(activity).

main :- 
    get_city_information(City, State, CityTerm),
    find_weather(CityTerm, State),
    resolve_operators(City, TempOperator, HumOperator),
    get_activity_information(Type), nl,
    message(TempOperator, HumOperator, Message),
    writeln(Message), nl,
    writeln('We search the follow activities in our base:'),
    find_activity(Type, TempOperator, HumOperator).

find_activity(Type, TempOperator, HumOperator) :-
    activity(Activity, Type, TempOperator, HumOperator),
    term_to_atom(Activity, ActivityAtom),
    writeln(ActivityAtom), fail.

get_city_information(City, State, CityTerm) :- 
    writeln('Hellooo!! Welcome to WEATHER FUNNY ADVISOR :)'), nl,
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

resolve_operators(City, TempOperator, HumOperator) :-
    listing(weather),
    retract(weather_data:weather(Temp, Humidity, City, Description)),
    write_city_information(City, Description),
    temp_operator(Temp, 25, TempOperator), % Temperatura 25º for reference
    hum_operator(Humidity, 30, HumOperator). % Humidity 30% for reference

write_city_information(City, Description) :-
    write('The weather condition in '),
    write(City),
    write(' is '),
    writeln(Description), nl.

temp_operator(X, Y, >) :- X >= Y, !.
temp_operator(X, Y, <) :- X < Y, !.

hum_operator(X, Y, _) :- X >= Y, !.
hum_operator(X, Y, >) :- X < Y, !.


