/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_info)
 NestLoop(movie_info_idx title cast_info movie_companies)
 HashJoin(movie_info_idx title cast_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=7 and movie_info.info_type_id>2 and title.phonetic_code<16821;

