/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.FavoriteCount<=5 AND p.CreationDate>='2010-10-21 13:21:24'::timestamp AND p.CreationDate<='2014-08-26 22:57:52'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2010-07-20 14:49:00'::timestamp AND b.Date>='2010-07-20 03:09:08'::timestamp;

