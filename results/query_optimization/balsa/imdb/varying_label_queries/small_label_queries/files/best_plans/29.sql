/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
SELECT COUNT(*) FROM cast_info,title WHERE title.id=cast_info.movie_id AND title.phonetic_code<18531 AND title.season_nr>31 AND title.imdb_index<3 AND title.episode_nr<8235 AND title.series_years<1313;

