/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_companies movie_info_idx)
 HashJoin(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<71648 and cast_info.role_id<10 and movie_companies.company_type_id<2 and title.kind_id=1;

