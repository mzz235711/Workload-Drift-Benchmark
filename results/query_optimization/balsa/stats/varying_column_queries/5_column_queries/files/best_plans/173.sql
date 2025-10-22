/*+ HashJoin(v b u p t)
 MergeJoin(b u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((v (b (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CommentCount>=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate<='2014-07-29 05:05:37'::timestamp;

