/*+ MergeJoin(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 MergeJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id<4 and title.phonetic_code>0;

