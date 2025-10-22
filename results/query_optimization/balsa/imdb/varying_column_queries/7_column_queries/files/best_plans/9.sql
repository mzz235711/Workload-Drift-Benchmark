/*+ MergeJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading((((movie_info_idx title) movie_info) movie_companies)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<16 and movie_companies.company_type_id<2 and movie_info_idx.info_type_id<101 and title.production_year>126 and title.phonetic_code>6118 and title.kind_id>1 and title.season_nr>0;

