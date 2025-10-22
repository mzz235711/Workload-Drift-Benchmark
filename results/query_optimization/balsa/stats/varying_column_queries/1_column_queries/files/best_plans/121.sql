/*+ HashJoin(ph b u p t)
 MergeJoin(b u p t)
 MergeJoin(u p t)
 MergeJoin(p t)
 SeqScan(ph)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((ph (b (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND ph.PostHistoryTypeId=3;

