:- module(activity, [activity/4]).

% Activity singular and temperature < 25
activity(movie, singular, <, 25). % singular and temperature less than 25
activity(theater, singular, <, 25).
activity(restaurant, singular, <, 25).
activity(art_exposition, singular, <, 25).
activity(watch_volleyball_game, singular, <, 25).
activity(watch_football_game, singular, <, 25).
activity(ride_a_bike, singular, <, 25).
activity(go_to_skate, singular, <, 25).
activity(go_to_roller, singular, <, 25).
activity(go_to_shopping, singular, <, 25).

% Activity singular and temperature > 25
activity(ice_cream_shop, singular, >, 25). % singular and temperature more than 25
activity(video_game, singular, >, 25).
activity(club, singular, >, 25).
activity(movie, singular, >, 25).
activity(park, singular, >, 25).
activity(go_to_shopping, singular, >, 25).

% Activity in group and temperature < 25
activity(picnic, group, <, 25). % group and temperature less than 25
activity(show, group, <, 25).
activity(you_should_invite_your_friends_over_for_dinner_at_your_house, group, <, 25).
activity(you_should_invite_your_friends_over_for_a_barbecue_at_your_house, group, <, 25).
activity(club, group, <, 25).
activity(karaoke, group, <, 25).
activity(standup_paddle, group, <, 25).
activity(play_voleyball, group, <, 25).
activity(play_soccer_ball, group, <, 25).
activity(movie, group, <, 25). % singular and temperature less than 25
activity(theater, group, <, 25).
activity(restaurant, group, <, 25).
activity(art_exposition, group, <, 25).
activity(watch_volleyball_game, group, <, 25).
activity(watch_football_game, group, <, 25).
activity(ride_a_bike, group, <, 25).
activity(go_to_skate, group, <, 25).
activity(go_to_roller, group, <, 25).
activity(go_to_shopping, group, <, 25).
activity(dance, group, <, 25).
activity(you_should_go_steakhouse, group, <, 25).
activity(go_bowling, group, <, 25).

% Activity in group and temperature > 25
activity(club, group, >, 25). % group and temperature more than 25
activity(you_should_invite_your_friends_over_for_dinner_at_your_house, group, >, 25).
activity(you_should_invite_your_friends_over_for_a_barbecue_at_your_house, group, >, 25).
activity(you_should_go_steakhouse, group, >, 25).
activity(karaoke, group, >, 25).
activity(go_to_some_pub, group, >, 25).
activity(standup_paddle, group, >, 25).
activity(today_is_a_good_day_to_swimming, group, >, 25).
activity(go_bowling, group, >, 25).