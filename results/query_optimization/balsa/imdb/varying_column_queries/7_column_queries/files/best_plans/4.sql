/*+ NestLoop(title movie_info_idx movie_keyword movie_companies cast_info)
 HashJoin(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) cast_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>186 and movie_companies.company_type_id>1 and cast_info.role_id>1 and movie_info_idx.info_type_id=99 and title.imdb_index>0 and title.production_year>88 and title.kind_id=1;

