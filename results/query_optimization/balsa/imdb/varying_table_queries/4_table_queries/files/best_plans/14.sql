/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.episode_nr<7 and title.phonetic_code>20996 and title.season_nr>4;

