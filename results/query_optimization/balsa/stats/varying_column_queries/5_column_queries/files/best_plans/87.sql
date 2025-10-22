/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v (p u)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=4949 AND p.FavoriteCount<=21 AND u.DownVotes<=82;

