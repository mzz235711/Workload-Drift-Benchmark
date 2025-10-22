/*+ MergeJoin(title movie_companies movie_info movie_info_idx movie_keyword)
 MergeJoin(title movie_companies movie_info movie_info_idx)
 MergeJoin(title movie_companies movie_info)
 MergeJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading(((((title movie_companies) movie_info) movie_info_idx) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id>875 and title.production_year<104 and title.kind_id=1 and title.imdb_index=0;

