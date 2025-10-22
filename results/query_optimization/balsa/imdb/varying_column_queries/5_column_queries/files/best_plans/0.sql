/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.phonetic_code<20734 and title.season_nr=0 and title.episode_nr<6497 and title.production_year>0;

