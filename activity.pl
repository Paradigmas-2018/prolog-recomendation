:- module(activity, [activity/4]).

activity(cinema, sozinho, <, 25). % sozinho e temperatura menor que 25 graus
activity(teatro, sozinho, <, 25).
activity(restaurante, sozinho, <, 25).

activity(piquenique, grupo, <, 25). % grupo e temperatura menor que 25 graus
activity(show, grupo, <, 25).

activity(clube, grupo, >, 25). % grupo e temperatura maior que 25 graus

activity(sorveteria, sozinho, >, 25). % sozinho e temperatura maior que 25 graus
activity(video_game, sozinho, >, 25).