/*+ HashJoin(ph v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(ph)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=25 AND p.ViewCount>=0 AND p.CommentCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.CreationDate<='2014-08-25 15:36:07'::timestamp;

