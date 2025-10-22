/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.production_year>124 and title.kind_id=7 and title.phonetic_code>0 and title.season_nr<1;

