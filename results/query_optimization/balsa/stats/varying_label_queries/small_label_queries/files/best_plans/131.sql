/*+ NestLoop(p u ph)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(ph)
 Leading(((p u) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-11 05:35:52'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2267 AND p.FavoriteCount=0 AND u.DownVotes>=0 AND u.CreationDate>='2010-11-18 05:17:12'::timestamp AND u.CreationDate<='2014-09-12 04:56:25'::timestamp;

