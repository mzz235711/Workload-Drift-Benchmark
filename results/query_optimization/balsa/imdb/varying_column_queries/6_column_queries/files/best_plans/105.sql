/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id>950 and title.season_nr=0 and title.series_years>0 and title.kind_id>1 and title.phonetic_code>17182;

