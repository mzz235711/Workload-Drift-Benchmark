/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<1000 and title.episode_nr<251 and title.season_nr>0 and title.phonetic_code<21068 and title.imdb_index=0;

