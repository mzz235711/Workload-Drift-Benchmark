/*+ HashJoin(ph v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-30 07:08:46'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-07-22 18:16:08'::timestamp AND p.CreationDate<='2014-09-11 07:51:18'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 08:00:36'::timestamp;

