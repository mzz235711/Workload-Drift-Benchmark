/*+ HashJoin(movie_info cast_info movie_companies movie_info_idx title)
 HashJoin(cast_info movie_companies movie_info_idx title)
 HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_companies (movie_info_idx title))))) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<38 and title.episode_nr>0;

