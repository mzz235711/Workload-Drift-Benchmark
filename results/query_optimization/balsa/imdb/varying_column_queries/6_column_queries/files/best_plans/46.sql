/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>373 and title.series_years>0 and title.phonetic_code<7359 and title.production_year<120 and title.episode_nr>0;

