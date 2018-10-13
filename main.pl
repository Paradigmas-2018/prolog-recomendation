:- use_module(weather_data).
:- use_module(activity).

main :- 
    writeln('Enter the city name:'),
    read(City),
    writeln('Enter the state initials:'),
    read(State),
    find_weather(City, State),
    listing(weather),
    retract(weather_data:weather(Temp, _, "Gama")),
    writeln('Enter the [group] or [singular] activity:'),
    read(Type),
    operator(Temp, 25, Op),
    activity(X, Type, Op, 25),
    term_to_atom(X, X_atom),
    writeln(X_atom).

operator(X, Y, >) :- X > Y, !.
operator(X, Y, <) :- X < Y, !.


