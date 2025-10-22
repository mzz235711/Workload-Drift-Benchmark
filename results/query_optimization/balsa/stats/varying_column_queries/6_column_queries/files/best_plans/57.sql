/*+ HashJoin(ph v u p t)
 HashJoin(v u p t)
 HashJoin(u p t)
 HashJoin(p t)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(t)
 Leading((ph (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, postHistory as ph, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.OwnerUserId = u.Id AND t.Count<=140 AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2 AND u.Views>=0 AND u.Views<=56 AND u.UpVotes>=0;

