/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index=0;

