/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-13 15:54:37'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-12 12:09:55'::timestamp;

