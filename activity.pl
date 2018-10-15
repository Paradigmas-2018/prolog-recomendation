:- module(activity, [activity/5, message/3]).

message(<, _, "Temperature less than 25 and independ the humidity").
message(<, >, "Temperature less than 25 and depend the humidity").
message(>, _, "Temperature more than 25 and independ the humidity").
message(<, >, "Temperature more than 25 and depend the humidity").

% Activity singular and temperature < 25
activity("movie", singular, expensive, <, _). % independ the humidity
activity("theater", singular, expensive, <, _).
activity("restaurant", singular, expensive, <, _).
activity("art exposition", singular, expensive, <, _).
activity("watch volleyball game", singular, cheap, <, _).
activity("watch football game", singular, cheap, <, _).
activity("go to shopping", singular, expensive,<, _). 
activity("ride a bike", singular, cheap, <, >). % depend the humidity
activity("go to skate", singular, cheap, <, >).
activity("go to roller", singular, cheap, <, >).

% Activity singular and temperature > 25
activity("ice cream shop", singular, expensive, >, _). % independ the humidity
activity("video game", singular, cheap, >, _).
activity("club", singular, expensive, >, _).
activity("movie", singular, expensive, >, _).
activity("go to shopping", expensive, singular, >, _).
activity("park", singular, cheap, >, >). % depend the humidity

% Activity in group and temperature < 25
activity("you should invite your friends over for dinner at your house", group, expensive, <, <). % independ the humidity
activity("you should invite your friends over for a barbecue at your house", group, expensive, <, <).
activity("club", group, expensive, <, _).
activity("karaoke", group, cheap, <, _).
activity("show", group, expensive, <, >). % depend the humidity
activity("picnic", group, cheap, <, >). 
activity("standup paddle", group, expensive, <, >).
activity("play voleyball", group, cheap, <, >).
activity("play soccer ball", group, cheap, <, >).

% Activity in group and temperature > 25
activity("club", group, expensive, >, _). % independ the humidity
activity("you should invite your friends over for dinner at your house", group, expensive, >, _).
activity("you should invite your friends over for a barbecue at your house", group, expensive, >, _).
activity("you should go steakhouse", group, expensive, >, _).
activity("karaoke", group, cheap, >, _).
activity("go to some pub", group, expensive, >, _).
activity("today is a good day to swimming", group, cheap, >, _).
activity("go bowling", group, expensive, >, _).
activity("standup paddle", group, expensive, >, >). % depend the humidity