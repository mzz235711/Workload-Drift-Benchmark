/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.phonetic_code<5478 and title.series_years>0 and title.imdb_index=0;

