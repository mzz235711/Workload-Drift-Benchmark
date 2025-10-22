/*+ NestLoop(title movie_keyword movie_info)
 HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>359 and movie_info.info_type_id>2 and title.episode_nr>0 and title.production_year<111 and title.phonetic_code>11957;

