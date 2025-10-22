/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.imdb_index=0 and title.kind_id>1 and title.production_year<125 and title.season_nr<2;

