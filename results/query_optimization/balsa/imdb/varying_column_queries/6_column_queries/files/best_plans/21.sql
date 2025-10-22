/*+ HashJoin(title movie_keyword cast_info movie_info)
 HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.imdb_index=0 and title.production_year<127 and title.phonetic_code<22991 and title.episode_nr>0;

