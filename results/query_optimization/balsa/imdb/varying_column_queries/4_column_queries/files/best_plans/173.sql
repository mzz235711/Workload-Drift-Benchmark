/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_companies) movie_info))) */
select count(*) from movie_companies,cast_info,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id<41516 and title.production_year<51 and title.phonetic_code>3956;

