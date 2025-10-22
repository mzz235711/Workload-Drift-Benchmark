/*+ NestLoop(title movie_companies movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id<74422 and title.season_nr=0 and title.production_year>97 and title.phonetic_code<16717 and title.imdb_index>0;

