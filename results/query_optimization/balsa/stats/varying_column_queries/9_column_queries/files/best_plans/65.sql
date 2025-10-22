/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=42 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate>='2010-07-27 12:49:09'::timestamp AND u.CreationDate<='2014-08-27 21:37:33'::timestamp;

