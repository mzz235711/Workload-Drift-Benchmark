/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND p.Score<=29 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-01 18:44:30'::timestamp AND u.Views=1 AND u.UpVotes>=0 AND u.UpVotes<=267;

