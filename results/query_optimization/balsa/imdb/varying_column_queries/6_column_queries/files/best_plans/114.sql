/*+ MergeJoin(title movie_info_idx movie_companies movie_info movie_keyword)
 MergeJoin(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>2 and title.production_year>51 and title.episode_nr>0 and title.phonetic_code<19425 and title.imdb_index=0;

