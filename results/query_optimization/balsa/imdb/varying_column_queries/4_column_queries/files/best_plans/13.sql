/*+ HashJoin(cast_info movie_info movie_info_idx title movie_companies)
 NestLoop(movie_info movie_info_idx title movie_companies)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info (movie_info_idx title)) movie_companies))) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<98 and movie_info_idx.info_type_id<101 and title.production_year<81;

