:- module(activity, [activity/4, message/3]).

message(<, <, "Temperature less than 25 and independ the humidity").
message(<, >, "Temperature less than 25 and depend the humidity").
message(>, <, "Temperature more than 25 and independ the humidity").
message(<, >, "Temperature more than 25 and depend the humidity").

% Activity singular and temperature < 25
activity("movie", singular, <, <). % independ the humidity
activity("theater", singular, <, <).
activity("restaurant", singular, <, <).
activity("art exposition", singular, <, <).
activity("watch volleyball game", singular, <, <).
activity("watch football game", singular, <, <).
activity("go to shopping", singular, <, <). 
activity("ride a bike", singular, <, >). % depend the humidity
activity("go to skate", singular, <, >).
activity("go to roller", singular, <, >).

% Activity singular and temperature > 25
activity("ice cream shop", singular, >, <). % independ the humidity
activity("video game", singular, >, <).
activity("club", singular, >, <).
activity("movie", singular, >, <).
activity("go to shopping", singular, >, <).
activity("park", singular, >, >). % depend the humidity

% Activity in group and temperature < 25
activity("you should invite your friends over for dinner at your house", group, <, <). % independ the humidity
activity("you should invite your friends over for a barbecue at your house", group, <, <).
activity("club", group, <, <).
activity("karaoke", group, <, <).
activity("show", group, <, >). % depend the humidity
activity("picnic", group, <, >). 
activity("standup paddle", group, <, >).
activity("play voleyball", group, <, >).
activity("play soccer ball", group, <, >).

% activity("movie", group, <, 25). % singular and temperature less than 25
% activity("theater", group, <, 25).
% activity("restaurant", group, <, 25).
% activity("art exposition", group, <, 25).
% activity("watch volleyball game", group, <, 25).
% activity("watch football game", group, <, 25).
% activity("ride a bike", group, <, 25).
% activity("go to skate", group, <, 25).
% activity("go to roller", group, <, 25).
% activity("go to shopping", group, <, 25).
% activity("dance", group, <, 25).
% activity("you should go steakhouse", group, <, 25).
% activity("go bowling", group, <, 25).

% Activity in group and temperature > 25
activity("club", group, >, <). % independ the humidity
activity("you should invite your friends over for dinner at your house", group, >, <).
activity("you should invite your friends over for a barbecue at your house", group, >, <).
activity("you should go steakhouse", group, >, <).
activity("karaoke", group, >, <).
activity("go to some pub", group, >, <).
activity("today is a good day to swimming", group, >, <).
activity("go bowling", group, >, <).
activity("standup paddle", group, >, >). % depend the humidity