/*+ HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.series_years<1383 and title.episode_nr<5727 and title.imdb_index=0;

