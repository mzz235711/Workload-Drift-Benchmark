/*+ HashJoin(ph b u p t)
 MergeJoin(b u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((ph (b (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=3 AND p.CommentCount>=0 AND p.CommentCount<=11 AND u.DownVotes>=0 AND b.Date='2012-07-03 18:56:37'::timestamp;

