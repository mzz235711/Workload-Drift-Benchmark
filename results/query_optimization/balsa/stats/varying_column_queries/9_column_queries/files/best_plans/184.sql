/*+ HashJoin(b v u p t)
 HashJoin(v u p t)
 MergeJoin(u p t)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-2 AND p.Score<=23 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-28 19:34:00'::timestamp AND p.CreationDate<='2014-09-03 23:05:58'::timestamp AND u.CreationDate<='2014-09-03 22:20:23'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

