/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<50603 and movie_info.info_type_id>2 and title.phonetic_code<21694 and title.series_years>0 and title.kind_id>1;

