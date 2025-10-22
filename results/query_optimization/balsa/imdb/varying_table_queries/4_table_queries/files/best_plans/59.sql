/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>0 and title.season_nr>1 and title.episode_nr<2;

