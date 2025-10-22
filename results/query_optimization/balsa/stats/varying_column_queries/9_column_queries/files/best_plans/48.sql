/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2011-03-17 23:23:33'::timestamp AND ph.CreationDate<='2014-09-09 00:45:19'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=8 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-23 15:35:55'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-09-09 06:13:06'::timestamp;

