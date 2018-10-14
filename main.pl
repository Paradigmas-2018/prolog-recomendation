:- use_module(weather_data).
:- use_module(activity).

main :- 
    get_information(City, State, Type),
    find_weather(City, State),
    resolve_operator(City, Operator),
    find_activity(Type, Operator).

find_activity(Type, Operator) :-
    activity(Activity, Type, Operator, 25),
    term_to_atom(Activity, ActivityAtom),
    writeln(ActivityAtom).

get_information(City, State, Type) :- 
    writeln('Enter the city name:'),
    read(CityTerm),
    term_string(CityTerm, City),
    writeln('Enter the state initials:'),
    read(State),
    writeln('Enter the [group] or [singular] activity:'),
    read(Type).

resolve_operator(City, Operator) :-
    listing(weather),
    retract(weather_data:weather(Temp, _, City)),
    operator(Temp, 25, Operator).

operator(X, Y, >) :- X > Y, !.
operator(X, Y, <) :- X < Y, !.


