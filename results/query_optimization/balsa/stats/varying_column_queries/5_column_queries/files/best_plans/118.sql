/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 13:08:42'::timestamp AND p.CreationDate<='2014-09-12 20:44:52'::timestamp AND u.UpVotes>=0;

