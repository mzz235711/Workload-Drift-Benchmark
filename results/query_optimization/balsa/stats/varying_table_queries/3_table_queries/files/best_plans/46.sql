/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-16 20:23:42'::timestamp AND p.CommentCount<=24 AND p.FavoriteCount<=7 AND p.CreationDate>='2010-08-07 18:10:02'::timestamp AND p.CreationDate<='2014-09-13 23:15:00'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-08 03:52:35'::timestamp;

