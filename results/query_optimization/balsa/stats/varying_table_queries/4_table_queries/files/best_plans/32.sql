/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=18 AND u.Views>=0;

