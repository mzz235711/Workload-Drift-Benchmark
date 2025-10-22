/*+ MergeJoin(movie_info_idx title movie_companies movie_keyword)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((movie_info_idx title) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<116226 and title.imdb_index=0;

