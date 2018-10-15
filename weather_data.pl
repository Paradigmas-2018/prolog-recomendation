:- module(weather_data, [find_weather/2]).

:- use_module(library(http/http_open)).
:- use_module(library(http/json)).

:- dynamic weather/4.
% weather(temperature:integer, humidity:string, city_name:string, description:string)

find_weather(City, State) :- 
  generate_url(City, State, Url),
  setup_call_cleanup(
    http_open(Url, Stream, [request_header('Accept'='application/json')]),
    json_read_dict(Stream, Dict),
    close(Stream)
  ),
  string_lower(Dict.city_name, CityName),
  term_string(Humidity, Dict.humidity),
  assert(weather(Dict.temp, Humidity, CityName, Dict.condition_slug)).

generate_url(City, State, Url) :-
  term_to_atom(City, CityName),
  term_to_atom(State, StateName),
  atom_concat('https://api.hgbrasil.com/weather/?format=json&city_name=', CityName, TokenUrl),
  atom_concat(TokenUrl, '%20', MiddleTokenUrl),
  atom_concat(MiddleTokenUrl, StateName, FinalTokenUrl),
  atom_concat(FinalTokenUrl, '&fields=only_results,temp,city_name,humidity,condition_slug&key=codepen', Url).
  