:- module(activity, [activity/4]).

% Activity singular and temperature < 25
activity("movie", singular, <, 25). % singular and temperature less than 25
activity("theater", singular, <, 25).
activity("restaurant", singular, <, 25).
activity("art exposition", singular, <, 25).
activity("watch volleyball game", singular, <, 25).
activity("watch football game", singular, <, 25).
activity("ride a bike", singular, <, 25).
activity("go to skate", singular, <, 25).
activity("go to roller", singular, <, 25).
activity("go to shopping", singular, <, 25).

% Activity singular and temperature > 25
activity("ice cream shop", singular, >, 25). % singular and temperature more than 25
activity("video game", singular, >, 25).
activity("club", singular, >, 25).
activity("movie", singular, >, 25).
activity("park", singular, >, 25).
activity("go to shopping", singular, >, 25).

% Activity in group and temperature < 25
activity("picnic", group, <, 25). % group and temperature less than 25
activity("show", group, <, 25).
activity("you should invite your friends over for dinner at your house", group, <, 25).
activity("you should invite your friends over for a barbecue at your house", group, <, 25).
activity("club", group, <, 25).
activity("karaoke", group, <, 25).
activity("standup paddle", group, <, 25).
activity("play voleyball", group, <, 25).
activity("play soccer ball", group, <, 25).
activity("movie", group, <, 25). % singular and temperature less than 25
activity("theater", group, <, 25).
activity("restaurant", group, <, 25).
activity("art exposition", group, <, 25).
activity("watch volleyball game", group, <, 25).
activity("watch football game", group, <, 25).
activity("ride a bike", group, <, 25).
activity("go to skate", group, <, 25).
activity("go to roller", group, <, 25).
activity("go to shopping", group, <, 25).
activity("dance", group, <, 25).
activity("you should go steakhouse", group, <, 25).
activity("go bowling", group, <, 25).

% Activity in group and temperature > 25
activity("club", group, >, 25). % group and temperature more than 25
activity("you should invite your friends over for dinner at your house", group, >, 25).
activity("you should invite your friends over for a barbecue at your house", group, >, 25).
activity("you should go steakhouse", group, >, 25).
activity("karaoke", group, >, 25).
activity("go to some pub", group, >, 25).
activity("standup paddle", group, >, 25).
activity("today is a good day to swimming", group, >, 25).
activity("go bowling", group, >, 25).