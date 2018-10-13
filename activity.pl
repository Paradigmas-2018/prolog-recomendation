:- module(activity, [activity/4]).

activity(movie, singular, <, 25). % singular and temperature less than 25
activity(theater, singular, <, 25).
activity(restaurant, singular, <, 25).

activity(picnic, group, <, 25). % group and temperature less than 25
activity(show, group, <, 25).

activity(club, group, >, 25). % group and temperature more than 25

activity(ice_cream_shop, singular, >, 25). % singular and temperature more than 25
activity(video_game, singular, >, 25).