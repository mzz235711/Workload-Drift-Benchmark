/*+ HashJoin(ph v u p t)
 HashJoin(v u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((ph (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, postHistory as ph, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.OwnerUserId = u.Id AND p.CreationDate<='2014-08-31 06:20:31'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-01-14 13:55:33'::timestamp AND u.Views>=0 AND u.DownVotes<=0;

