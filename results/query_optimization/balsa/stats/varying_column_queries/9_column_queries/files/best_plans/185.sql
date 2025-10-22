/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=3 AND p.PostTypeId=1 AND p.Score=1 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-26 18:24:35'::timestamp AND p.CreationDate<='2014-09-10 19:39:25'::timestamp AND u.Views<=445 AND u.DownVotes>=0 AND u.DownVotes<=24;

