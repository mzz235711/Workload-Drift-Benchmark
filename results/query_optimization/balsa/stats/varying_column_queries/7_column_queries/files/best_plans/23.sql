/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=3519 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-26 20:12:15'::timestamp AND p.CreationDate<='2014-09-10 15:44:43'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=39;

