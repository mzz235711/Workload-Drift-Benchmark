/*+ HashJoin(movie_info cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (movie_info_idx (title movie_companies))))) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id=8 and movie_info_idx.info_type_id>99 and title.imdb_index>0;

