/*+ MergeJoin(movie_info cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_info)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (movie_info_idx (title movie_companies))))) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<16 and title.episode_nr<6 and title.season_nr<2 and title.production_year<125 and title.phonetic_code>16805;

