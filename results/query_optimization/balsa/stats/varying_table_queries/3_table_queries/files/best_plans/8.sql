/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-17 13:10:29'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=306;

