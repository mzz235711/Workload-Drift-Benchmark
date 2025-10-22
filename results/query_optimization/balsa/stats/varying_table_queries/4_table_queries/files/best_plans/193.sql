/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.ViewCount<=17382 AND u.Reputation>=1 AND u.Reputation<=2725 AND u.Views>=0 AND u.Views<=17;

