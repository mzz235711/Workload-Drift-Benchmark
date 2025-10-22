/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-07 10:50:24'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-30 14:49:00'::timestamp AND u.Views>=0 AND u.Views<=30;

