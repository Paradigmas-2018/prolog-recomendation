:- use_module(weather_data).

main :- 
    writeln('Enter the city name:'),
    read(City),
    writeln('Enter the state initials:'),
    read(State),
    find_weather(City, State),
    listing(weather).