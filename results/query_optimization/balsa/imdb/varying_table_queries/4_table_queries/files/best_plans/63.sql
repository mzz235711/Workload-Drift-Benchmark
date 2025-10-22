/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<87329 and movie_info.info_type_id<108 and title.phonetic_code<18250 and title.series_years>0;

