/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.production_year>94 AND title.kind_id<5 AND title.series_years>102 AND movie_companies.company_type_id=2 AND movie_keyword.keyword_id<1329799 AND title.imdb_index<19;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3737336 AND title.phonetic_code>6352 AND title.episode_nr<10077 AND title.imdb_index<12 AND title.series_years<1312;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<62 AND title.imdb_index<12;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<2544841 AND title.kind_id<6 AND title.production_year>110 AND title.imdb_index<14;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id>5 AND title.imdb_index<8;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.imdb_index<5 AND movie_keyword.keyword_id<4189089 AND cast_info.role_id=7 AND title.phonetic_code>17000 AND title.series_years<745;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.kind_id>2 AND title.season_nr<55 AND title.imdb_index<11;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<21 AND movie_keyword.keyword_id<3723993 AND movie_companies.company_type_id=2 AND title.series_years>247 AND title.imdb_index<19;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<8218 AND title.imdb_index<15;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<800 AND title.imdb_index<3 AND title.phonetic_code>7740;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<7309 AND movie_companies.company_type_id=2 AND title.season_nr<51 AND title.imdb_index<11;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.season_nr<3 AND title.imdb_index<4;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_info_idx.info_type_id>99 AND movie_companies.company_type_id=1 AND title.imdb_index<13;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.production_year>88;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<78 AND title.imdb_index<11 AND title.phonetic_code<11554 AND title.series_years<585;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<2608333 AND title.kind_id=7 AND title.production_year>122 AND title.imdb_index<3;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND movie_info.info_type_id<92 AND title.series_years>1228;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.season_nr>1 AND title.imdb_index<12 AND title.episode_nr<9608;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<12 AND title.series_years>1198 AND title.episode_nr<2682 AND title.season_nr<86;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.kind_id<7 AND title.imdb_index=1 AND title.series_years<640;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id>1 AND title.imdb_index<4 AND title.phonetic_code<1913;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id<5 AND title.imdb_index<19;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<3971 AND title.kind_id>1 AND title.imdb_index<8 AND movie_info_idx.info_type_id<113;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.production_year<60 AND title.series_years<270 AND title.episode_nr<12237 AND title.imdb_index<8 AND movie_keyword.keyword_id<3258555;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<17 AND title.production_year<80;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<13;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<1369 AND title.episode_nr<13949 AND movie_info_idx.info_type_id<100 AND title.imdb_index<19;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.phonetic_code>13329 AND title.episode_nr<5827 AND movie_companies.company_type_id<2 AND title.kind_id<2 AND title.production_year>88 AND title.imdb_index<18;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_info_idx.info_type_id<100 AND title.phonetic_code>5398 AND title.imdb_index<2 AND title.kind_id<3 AND title.episode_nr<13519;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<22 AND title.series_years>1135 AND title.episode_nr<9369 AND title.season_nr<68;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<12 AND title.phonetic_code<4995;

/*+ HashJoin(title movie_info movie_keyword)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.production_year>51 AND title.imdb_index<10 AND title.series_years<955 AND movie_info.info_type_id>6;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3135470 AND title.season_nr<31 AND title.imdb_index<17;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<4 AND title.phonetic_code>2977 AND movie_info_idx.info_type_id<112;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.production_year<111 AND movie_info_idx.info_type_id<103 AND title.imdb_index<1 AND title.season_nr<47;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<13 AND title.phonetic_code>16150 AND movie_info_idx.info_type_id<107;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.production_year>13 AND title.season_nr<77 AND movie_keyword.keyword_id<1248311 AND title.imdb_index<11;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code>8156 AND title.series_years<781 AND movie_info_idx.info_type_id=100 AND title.imdb_index<14;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<12 AND title.production_year=42;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.production_year>105 AND title.kind_id>2 AND movie_info.info_type_id<74 AND title.imdb_index<19;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years<737 AND movie_companies.company_type_id<2 AND title.imdb_index<12 AND movie_keyword.keyword_id<1621271;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<29 AND title.imdb_index=0 AND movie_companies.company_type_id=1 AND title.phonetic_code<13554;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.production_year>30 AND movie_keyword.keyword_id<613132 AND title.series_years<508;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<14630 AND movie_companies.company_type_id>1 AND title.season_nr<71 AND title.imdb_index<3;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years<511 AND title.production_year>12 AND movie_info_idx.info_type_id<112 AND title.imdb_index=0;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id=2 AND movie_keyword.keyword_id<2767081 AND title.phonetic_code>13613 AND title.imdb_index<1;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.kind_id<2 AND title.series_years<78 AND movie_companies.company_type_id<2 AND movie_keyword.keyword_id<1286003 AND title.imdb_index<14;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<23 AND title.series_years<671 AND title.production_year<109 AND title.episode_nr<13772 AND title.imdb_index<3;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years<1086 AND movie_companies.company_type_id>1 AND title.imdb_index=0 AND movie_keyword.keyword_id<2182602;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.production_year>22;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<4376 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<9 AND title.phonetic_code>7317 AND movie_keyword.keyword_id<3878049 AND title.series_years<47 AND movie_companies.company_type_id>1;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<89 AND title.imdb_index<21 AND title.series_years>448;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years<1233 AND title.production_year=48 AND title.imdb_index<17 AND title.episode_nr<7007;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code<18412 AND title.imdb_index<7 AND title.production_year>2 AND movie_info_idx.info_type_id<110;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<3552 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=3 AND movie_info_idx.info_type_id<111 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years>441 AND movie_companies.company_type_id>1 AND title.imdb_index=0 AND movie_keyword.keyword_id<3074477;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<1559025 AND title.phonetic_code>15344 AND title.imdb_index<14;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3659123 AND title.phonetic_code<5759 AND title.kind_id>4 AND title.imdb_index<16 AND title.production_year<122 AND title.season_nr<71;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<2654997 AND title.kind_id>6 AND title.production_year>61 AND title.imdb_index<8;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.imdb_index<23 AND title.kind_id>2 AND title.production_year>88 AND title.series_years<100;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.role_id=11 AND title.kind_id<3 AND title.imdb_index<23;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id>6 AND title.series_years<10 AND title.imdb_index<4;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<7 AND title.series_years<508;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id>1 AND title.imdb_index<24;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<11 AND title.series_years<174 AND title.kind_id>5;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.phonetic_code<22040 AND title.imdb_index<20 AND movie_companies.company_type_id=1;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<17 AND title.kind_id<3 AND movie_keyword.keyword_id<4109938 AND title.episode_nr<11328;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_info_idx.info_type_id<109 AND movie_companies.company_type_id=1 AND title.imdb_index<21;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<19 AND title.production_year>107;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<12 AND title.phonetic_code<13511;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<4 AND title.phonetic_code>18067;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=6 AND title.series_years<699 AND title.imdb_index<11;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<50 AND title.imdb_index<6 AND title.series_years<422;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index=1 AND title.episode_nr<6656;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<22 AND movie_keyword.keyword_id<3213188 AND title.episode_nr<3251 AND title.series_years>531;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.kind_id=6 AND title.series_years<808 AND title.imdb_index<14 AND title.phonetic_code<16462;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id<5 AND title.imdb_index<3;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=3 AND title.imdb_index<23;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<17 AND title.imdb_index<17 AND title.episode_nr<4250 AND movie_info_idx.info_type_id<112;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years<743 AND title.imdb_index<19 AND movie_keyword.keyword_id<758632;

/*+ HashJoin(movie_keyword title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<21 AND title.phonetic_code<14661;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<8547 AND movie_companies.company_type_id<2 AND title.season_nr>9 AND title.imdb_index<11;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<17 AND title.season_nr<64;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id<5 AND title.series_years<1169 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_info_idx.info_type_id<111 AND title.imdb_index<6 AND title.season_nr<58 AND title.series_years<858 AND title.phonetic_code<20239;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years>772 AND title.imdb_index<14 AND movie_keyword.keyword_id<1710260;

/*+ HashJoin(movie_keyword title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_info.info_type_id>44 AND title.imdb_index<7;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>430 AND title.imdb_index<14 AND title.phonetic_code<11825;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.episode_nr>1260 AND title.imdb_index<24 AND movie_keyword.keyword_id<3006933 AND title.phonetic_code<1620;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND movie_keyword.keyword_id<376550 AND movie_companies.company_type_id=1;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.kind_id=7 AND title.imdb_index<18;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.kind_id=2 AND title.phonetic_code>5074 AND title.series_years<927 AND title.imdb_index<2;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<16 AND title.imdb_index<9 AND title.phonetic_code>16711 AND title.series_years<812;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<6 AND title.series_years<861 AND title.phonetic_code<3956 AND movie_companies.company_type_id>1 AND title.season_nr<77;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.episode_nr<9221 AND movie_keyword.keyword_id<1935335 AND title.kind_id<3 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<14 AND title.kind_id<4 AND title.episode_nr<12409;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<16 AND title.phonetic_code>12223 AND movie_info_idx.info_type_id<100;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id<2 AND title.season_nr<8 AND title.production_year>55 AND title.imdb_index<2;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<8 AND title.kind_id<5 AND movie_keyword.keyword_id<4486601 AND title.episode_nr<5446;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<642 AND movie_companies.company_type_id>1 AND title.imdb_index<24 AND movie_info_idx.info_type_id<101;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>821 AND title.imdb_index<6 AND title.phonetic_code>2336;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id=1 AND title.season_nr<81 AND title.production_year=55 AND title.imdb_index<10;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<74 AND title.kind_id>1 AND title.episode_nr<13415 AND title.imdb_index<3 AND title.production_year>101;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.kind_id<5 AND title.series_years<1182 AND title.imdb_index<21;

/*+ HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.kind_id<4 AND title.imdb_index<8 AND title.episode_nr<14642;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<81 AND title.kind_id>3 AND title.phonetic_code>9316 AND title.imdb_index<5;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id>1 AND title.series_years<142 AND title.phonetic_code>1240 AND title.imdb_index<5;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id=1 AND title.phonetic_code>5324 AND title.imdb_index<18;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<6607 AND title.imdb_index<16 AND movie_info_idx.info_type_id=99;

/*+ HashJoin(movie_keyword title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.production_year>62 AND title.imdb_index<21 AND title.series_years<938 AND movie_info.info_type_id>70;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.production_year>62 AND title.episode_nr<12021 AND title.imdb_index<18 AND title.phonetic_code<12401;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=6 AND title.season_nr<56 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<7 AND title.production_year<124;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=3 AND title.series_years<904 AND title.imdb_index<15;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<3 AND title.production_year=117 AND title.series_years<868 AND title.episode_nr<7054;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id>1 AND title.phonetic_code<22047 AND title.imdb_index<20;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<150875 AND title.phonetic_code>1824 AND title.episode_nr<3621 AND title.imdb_index<23 AND title.series_years<65;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<22 AND title.season_nr<82 AND title.kind_id=2;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.phonetic_code<14720 AND title.episode_nr<6876 AND title.imdb_index<18 AND title.season_nr<46 AND title.series_years>516;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<1012702 AND title.phonetic_code<5434 AND title.imdb_index<4;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id=2 AND title.imdb_index<18;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.phonetic_code<22617 AND title.production_year>114 AND title.imdb_index<6 AND title.episode_nr<13808;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.phonetic_code<8186 AND title.series_years<36 AND title.production_year>62 AND title.imdb_index<22;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code<5196 AND title.season_nr<12 AND title.imdb_index<12 AND title.episode_nr<5076 AND title.series_years<963;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<2081713 AND title.imdb_index<14 AND title.phonetic_code<17094;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.role_id>6 AND title.kind_id=2 AND title.imdb_index<16 AND title.episode_nr<1065;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code>1730 AND movie_info_idx.info_type_id=99 AND title.imdb_index<22 AND title.episode_nr<14630;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<11 AND movie_companies.company_type_id<2 AND title.kind_id<4 AND title.series_years<681;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years>774 AND title.phonetic_code<17925 AND title.imdb_index<12;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<7715 AND movie_companies.company_type_id<2 AND title.season_nr<9 AND title.imdb_index>0;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<1100 AND title.episode_nr<5292 AND movie_info_idx.info_type_id<108 AND title.imdb_index<21;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<21 AND title.season_nr<12 AND movie_keyword.keyword_id<3902194 AND movie_companies.company_type_id>1;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.phonetic_code>11945 AND movie_companies.company_type_id>1 AND title.imdb_index<5 AND title.episode_nr<10976;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.kind_id<3 AND title.imdb_index<6 AND title.phonetic_code<10788;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=4 AND title.series_years<903 AND title.imdb_index<3;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<11 AND movie_keyword.keyword_id<2602322 AND title.production_year>41;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<12 AND title.episode_nr<5430 AND title.production_year>55 AND title.season_nr<59;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<3 AND title.production_year<102 AND title.phonetic_code>17463 AND movie_keyword.keyword_id<2976838 AND movie_companies.company_type_id=1 AND title.series_years<1184;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<96 AND title.imdb_index<16 AND title.phonetic_code<4459 AND title.series_years<9;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<13 AND title.episode_nr<6474;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.episode_nr<6324 AND title.kind_id<2 AND title.imdb_index=1 AND movie_keyword.keyword_id<3641275;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>232 AND title.imdb_index<13 AND title.phonetic_code<18964;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>325 AND title.imdb_index<9 AND title.phonetic_code<18203;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<10 AND title.kind_id>5 AND movie_keyword.keyword_id<3569741 AND title.episode_nr<11606;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.series_years>396 AND title.imdb_index<8 AND movie_companies.company_type_id<2 AND title.episode_nr<2678;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.role_id=4 AND title.imdb_index<21 AND title.production_year>61 AND title.phonetic_code<12828 AND movie_keyword.keyword_id<616831;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<2260 AND title.phonetic_code>17097 AND title.series_years>391 AND title.imdb_index<17;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<9876 AND title.phonetic_code<4291 AND title.series_years<1120 AND title.imdb_index<11;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.series_years<341 AND title.imdb_index>1;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.phonetic_code>6398 AND title.imdb_index<24 AND movie_companies.company_type_id>1;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id=7 AND title.season_nr<89 AND title.imdb_index<7;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years>88 AND movie_companies.company_type_id=1 AND title.imdb_index<24 AND movie_keyword.keyword_id<377170;

/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<87 AND title.imdb_index<23 AND movie_companies.company_type_id<2;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.nr_order<906622174 AND title.imdb_index<21 AND movie_keyword.keyword_id<940272 AND title.season_nr<65 AND title.series_years>819;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<6 AND title.phonetic_code>13439 AND movie_info_idx.info_type_id=100;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<6 AND title.phonetic_code<10734;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<6 AND title.imdb_index<1 AND title.production_year=88 AND title.episode_nr<2299 AND movie_companies.company_type_id=1;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<2569310 AND title.imdb_index<7 AND title.phonetic_code<1110;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id=1 AND title.kind_id>1 AND title.season_nr<53 AND title.production_year>56 AND title.imdb_index<8;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years>63 AND title.imdb_index<15 AND movie_keyword.keyword_id<222818;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.kind_id<6 AND title.season_nr<48 AND title.imdb_index<4 AND title.series_years<597;

/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<786 AND title.episode_nr<3636 AND title.imdb_index<23;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index=0 AND title.production_year<81 AND movie_keyword.keyword_id<3281387 AND movie_info_idx.info_type_id<104;

/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id<3 AND movie_keyword.keyword_id<1405799 AND title.phonetic_code<15170 AND title.imdb_index<14;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_info_idx.info_type_id<103 AND movie_companies.company_type_id<2 AND title.imdb_index<6;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<11078 AND title.imdb_index<13;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>897 AND title.kind_id<3 AND title.imdb_index<20 AND title.season_nr<9 AND movie_companies.company_type_id<2;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id=1 AND title.kind_id>1 AND movie_info.info_type_id<17 AND title.season_nr<44 AND title.imdb_index<20;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
SELECT COUNT(*) FROM cast_info,title WHERE title.id=cast_info.movie_id AND title.imdb_index<22 AND title.episode_nr>7987 AND title.phonetic_code<7450;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index=0 AND title.production_year=97;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<3 AND title.production_year=77;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3490050 AND title.phonetic_code<4775 AND title.imdb_index<6;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<10489 AND title.kind_id=7 AND title.imdb_index<7 AND movie_info_idx.info_type_id<103;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<23;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.season_nr<9 AND title.imdb_index<5;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.series_years>535 AND title.imdb_index<14;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.kind_id=7 AND title.phonetic_code>1789 AND title.series_years<934 AND title.imdb_index<5;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id<2 AND title.phonetic_code>17094 AND title.imdb_index<17;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.phonetic_code>15504 AND movie_companies.company_type_id=2 AND title.imdb_index<10 AND title.series_years<788 AND movie_info_idx.info_type_id<105;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<13 AND title.series_years>626 AND title.episode_nr<4743 AND title.season_nr<37;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.kind_id=3 AND title.episode_nr<184 AND title.series_years<833;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND movie_keyword.keyword_id<2178907 AND cast_info.nr_order<576838783 AND cast_info.role_id<8 AND title.episode_nr>1806 AND title.phonetic_code<4732;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.production_year>117 AND title.imdb_index>0 AND title.phonetic_code<5394;

/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3059939 AND title.kind_id>6 AND title.season_nr>20 AND title.imdb_index<15;

/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<7211 AND movie_companies.company_type_id>1 AND title.season_nr<85 AND title.imdb_index>0;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years>675 AND title.episode_nr<8063 AND movie_info_idx.info_type_id<109 AND title.imdb_index<9;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_companies.company_type_id=1 AND title.imdb_index<5;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<10 AND movie_companies.company_type_id=1 AND title.production_year>103 AND title.kind_id=1;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.series_years<714 AND title.imdb_index<5 AND movie_companies.company_type_id<2 AND title.episode_nr<8070;

/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years<546 AND title.imdb_index<2 AND movie_keyword.keyword_id<412497;

/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.kind_id<6 AND title.imdb_index<13 AND title.phonetic_code>15936;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.imdb_index<19 AND cast_info.role_id>5 AND title.kind_id>5 AND title.phonetic_code>10715;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<12549 AND movie_companies.company_type_id>1 AND title.season_nr<64 AND title.imdb_index<3;

/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<384 AND title.kind_id<7 AND title.imdb_index<8 AND title.season_nr<4 AND movie_companies.company_type_id<2;

/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id<2 AND title.kind_id<2 AND movie_info.info_type_id<83 AND title.season_nr<62 AND title.imdb_index<7;

/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<1707982 AND title.kind_id>4 AND title.production_year>13 AND title.imdb_index<20;

/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.imdb_index<23 AND title.episode_nr<937 AND title.production_year<127 AND title.season_nr<76;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.nr_order<546248580 AND title.series_years>106 AND movie_keyword.keyword_id<3433304 AND title.kind_id<6;

