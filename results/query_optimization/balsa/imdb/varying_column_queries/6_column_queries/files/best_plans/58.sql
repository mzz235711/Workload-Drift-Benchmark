/*+ MergeJoin(movie_companies title movie_info_idx movie_info movie_keyword)
 MergeJoin(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>1 and movie_info.info_type_id>7 and movie_companies.company_type_id>1 and title.phonetic_code<10247 and title.production_year>111 and title.imdb_index=0;

