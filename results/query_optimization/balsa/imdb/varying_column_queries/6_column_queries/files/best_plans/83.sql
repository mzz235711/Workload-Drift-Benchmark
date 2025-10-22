/*+ MergeJoin(movie_info_idx title movie_companies movie_keyword movie_info)
 MergeJoin(movie_info_idx title movie_companies movie_keyword)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<107 and movie_info_idx.info_type_id<101 and title.kind_id<7 and title.phonetic_code>10311 and title.season_nr<5 and title.production_year>109;

