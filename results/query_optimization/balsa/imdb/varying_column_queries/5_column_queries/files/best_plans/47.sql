/*+ HashJoin(movie_keyword movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info movie_companies)
 HashJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 Leading((movie_keyword ((movie_info_idx (title cast_info)) movie_companies))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and cast_info.role_id<6 and movie_keyword.keyword_id<2488 and title.production_year>123 and title.kind_id=1;

