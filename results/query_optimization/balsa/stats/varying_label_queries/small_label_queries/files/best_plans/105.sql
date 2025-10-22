/*+ NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 Leading(((u p) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-03-28 14:55:24'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND p.CreationDate>='2010-07-20 12:02:26'::timestamp AND p.CreationDate<='2014-09-12 08:58:41'::timestamp AND u.UpVotes<=9;

