/*+ HashJoin(movie_info_idx title cast_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title cast_info movie_keyword)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) cast_info) movie_keyword) movie_companies)) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<24 and movie_companies.company_type_id<2 and title.episode_nr>0 and title.season_nr=1 and title.phonetic_code<17229;

