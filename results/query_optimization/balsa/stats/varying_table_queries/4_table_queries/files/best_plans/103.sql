/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-08 14:42:07'::timestamp AND u.Reputation>=1 AND u.Reputation<=133 AND u.Views>=0;

