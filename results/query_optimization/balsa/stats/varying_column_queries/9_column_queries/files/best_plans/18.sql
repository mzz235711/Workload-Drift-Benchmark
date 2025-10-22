/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score<=40 AND p.ViewCount=1994 AND p.FavoriteCount>=0 AND p.FavoriteCount<=36 AND p.CreationDate>='2010-08-31 16:32:21'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=66 AND u.CreationDate>='2010-12-14 05:16:38'::timestamp;

