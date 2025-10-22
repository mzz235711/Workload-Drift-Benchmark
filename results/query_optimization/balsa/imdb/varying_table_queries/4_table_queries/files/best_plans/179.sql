/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((movie_info ((movie_info_idx title) movie_companies))) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<98 and title.phonetic_code<16652 and title.imdb_index=0;

