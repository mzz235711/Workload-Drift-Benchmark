/*+ HashJoin(cast_info movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info ((title movie_keyword) movie_companies)))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>2849 and title.kind_id>1 and title.production_year<40;

