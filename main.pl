:- use_module(weather_data).
:- use_module(activity).

main :- 
    writeln('Enter the city name:'),
    read(City),
    writeln('Enter the state initials:'),
    read(State),
    find_weather(City, State),
    listing(weather),
    retract(weather_data:weather(A, B, "Gama")),
    %term_string(A, A_atom),
    writeln(A),
    operator(A, 25, Op),
    activity(X, grupo, Op, 25),
    term_to_atom(X, X_atom),
    writeln(X_atom).

operator(X, Y, >) :- X > Y, !.
operator(X, Y, <) :- X < Y, !.


