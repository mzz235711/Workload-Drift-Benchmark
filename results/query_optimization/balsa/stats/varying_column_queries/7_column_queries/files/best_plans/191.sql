/*+ HashJoin(b ph p u)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((b (ph (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=6 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.Reputation<=2526 AND b.Date>='2010-10-29 15:29:29'::timestamp;

