/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=25 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.DownVotes>=0 AND u.CreationDate>='2011-03-09 21:55:06'::timestamp;

