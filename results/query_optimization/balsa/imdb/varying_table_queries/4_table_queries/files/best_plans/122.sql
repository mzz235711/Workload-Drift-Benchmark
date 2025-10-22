/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.production_year<127;

