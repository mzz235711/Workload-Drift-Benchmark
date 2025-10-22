/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CommentCount<=22 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.UpVotes<=44 AND b.Date>='2010-07-29 02:28:59'::timestamp;

