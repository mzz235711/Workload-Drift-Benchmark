/*+ MergeJoin(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(cast_info)
 Leading((((movie_info_idx title) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=8 and title.production_year<119 and title.kind_id<7 and title.phonetic_code>2073 and title.imdb_index=0;

